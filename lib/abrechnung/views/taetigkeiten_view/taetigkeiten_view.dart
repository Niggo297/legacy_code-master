import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/euro_formatter.dart';
import 'package:zeit_erfassung/_general/helpers/functions.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/confirmation_dialog.dart';
import 'package:zeit_erfassung/_general/widgets/wrapper.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/widgets/problem_messenger.dart';

/// Page that shows a list of all Taetigkeiten and allows to edit this list.
class TaetigkeitenView extends StatelessWidget {
  /// Named route to this page
  static const routeName = '/taetigkeiten';
  static final _logger = const Logger('TaetigkeitenView', true);

  /// Constructs page that shows a list of all Taetigkeiten and allows to edit this list.
  const TaetigkeitenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProblemMessenger(
        child: BlocBuilder<AbrechnungBloc, AbrechnungState>(
          builder: (context, state) => Wrapper(
            title: 'Tätigkeiten',
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                _logger('Starting the process of adding a Taetigkeit', 'build-onPressed');
                final taetigkeit = await showDialog<Taetigkeit>(
                  context: context,
                  builder: (context) => const _AddTaetigkeitDialog(),
                );
                _logger('Receiving from dialog: $taetigkeit', 'build-onPressed');
                if (taetigkeit != null) {
                  context.read<AbrechnungBloc>().add(AddTaetigkeit(taetigkeit));
                }
              },
              child: const Icon(Icons.add),
            ),
            body: BlocBuilder<AbrechnungBloc, AbrechnungState>(
              builder: (context, state) {
                final as = state.abrechnungSettings;
                return ListView.builder(
                  itemCount: as.taetigkeiten.length,
                  itemBuilder: (context, i) {
                    final t = as.taetigkeiten[i];
                    return ListTile(
                      title: Text(t.name),
                      subtitle: Text('Kostensatz: ${EuroFormatter.withSymbolFromCentiCents(t.kostensatz)}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          _logger('Showing confirmation dialog', 'build-onPressed');
                          final confirm = await showDialog<bool>(
                                context: context,
                                builder: (context) => ConfirmationDialog(
                                  title: 'Tätigkeit löschen',
                                  messages: ['Möchten Sie die Tätigkeit "${t.name}" wirklich löschen?'],
                                ),
                              ) ??
                              false;
                          _logger('Receiving from dialog: $confirm', 'build-onPressed');
                          if (confirm) {
                            context.read<AbrechnungBloc>().add(RemoveTaetigkeit(t));
                          }
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      );
}

class _AddTaetigkeitDialog extends StatefulWidget {
  const _AddTaetigkeitDialog({Key? key}) : super(key: key);

  @override
  State<_AddTaetigkeitDialog> createState() => __AddTaetigkeitDialogState();
}

class __AddTaetigkeitDialogState extends State<_AddTaetigkeitDialog> {
  final _nameController = TextEditingController();
  final _kostensatzController = TextEditingController();
  final _kosensatzFormattedController = TextEditingController();
  static final _logger = const Logger('__AddTaetigkeitDialogState', true);

  @override
  Widget build(BuildContext context) => Dialog(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Hinzufügen einer Tätigkeit'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: 'Bezeichnung', hintText: '(z.B. Beratung, Betreuung, Unterricht, etc.)'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _kostensatzController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Kostensatz',
                          hintText: 'Preis pro Stunde der Tätigkeit',
                        ),
                        onChanged: (v) {
                          setState(() {
                            _kosensatzFormattedController.text = EuroFormatter.withSymbolFromDoubleString(v);
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _kosensatzFormattedController,
                        style: const TextStyle(color: Colors.black),
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Formatiert',
                          labelStyle: const TextStyle(color: Colors.black),
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: const Text('Abbruch'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          _logger('Adding a new Taetigkeit', 'build-onPressed');
                          if (_nameController.text.isEmpty) {
                            F.showCustomSnackbar(
                              'Der Name kann nicht leer sein.',
                              context: context,
                            );
                            return;
                          }
                          final input = EuroFormatter.asCentiCentsFromDoubleString(_kostensatzController.text);
                          Navigator.of(context).pop(Taetigkeit(name: _nameController.text, kostensatz: input));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
