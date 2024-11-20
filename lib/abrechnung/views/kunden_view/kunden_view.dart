import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';
import 'package:zeit_erfassung/_general/helpers/euro_formatter.dart';
import 'package:zeit_erfassung/_general/helpers/functions.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/wrapper.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/entities/kunde.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/widgets/problem_messenger.dart';

/// Complete page presenting the list of all customers and the possibilities to edit this list
class KundenView extends StatelessWidget {
  /// Route name for this page
  static const routeName = '/kunden';
  static final _logger = const Logger('KundenView', true);

  /// Creates page presenting the list of all customers and the possibilities to edit this list
  const KundenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProblemMessenger(
        child: BlocBuilder<AbrechnungBloc, AbrechnungState>(
          builder: (context, state) => Wrapper(
            title: 'Kunden',
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                _logger('Starting the process of adding a Kunde', 'onPressed');
                final kunde = await showDialog<Kunde>(
                  context: context,
                  builder: (context) => const _AddKundeDialog(),
                );
                _logger('Receiving from dialog: $kunde', 'build-onPressed');
                if (kunde != null) {
                  context.read<AbrechnungBloc>().add(AddKunde(kunde));
                }
              },
              child: const Icon(Icons.add),
            ),
            body: BlocBuilder<AbrechnungBloc, AbrechnungState>(
              builder: (context, state) {
                final as = state.abrechnungSettings;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: as.kunden.length,
                    itemBuilder: (context, i) {
                      final kunde = as.kunden[i];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Text(kunde.name, style: layStyleH4),
                                    ),
                                  ),
                                  InkWell(
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.delete),
                                    ),
                                    onTap: () {
                                      _logger(
                                          'Starting the process of deleting a Kunde',
                                          'onPressed');
                                    },
                                  ),
                                ],
                              ),
                              for (final abwTaetigkeit in kunde.abwTaetigeiten)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              abwTaetigkeit.name,
                                              style: layStyleP2,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            EuroFormatter
                                                .withSymbolFromCentiCents(
                                                    abwTaetigkeit.kostensatz),
                                            style: layStyleP2,
                                          ),
                                          const SizedBox(width: 8),
                                          InkWell(
                                            onTap: () async {
                                              _logger(
                                                  'Start process of editing an abweichenden Kostensatz, build-onTap');
                                              final taetigkeit =
                                                  await showDialog<Taetigkeit>(
                                                context: context,
                                                builder: (context) =>
                                                    _AddAbwTaetigkeitDialog(
                                                        abwTaetigkeit:
                                                            abwTaetigkeit),
                                              );
                                              _logger(
                                                  'Receiving from dialog: $taetigkeit',
                                                  'build-onPressed');
                                              if (taetigkeit != null) {
                                                _logger(
                                                    'Triggering AddAbwTaetigkeit for: $taetigkeit',
                                                    'build-onPressed');
                                                context
                                                    .read<AbrechnungBloc>()
                                                    .add(AddAbwTaetigkeit(
                                                        kunde, taetigkeit));
                                              }
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(Icons.edit),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(Icons.delete),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: layColorPrimaryShade300,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Abweichende Tätigkeit hinzufügen',
                                            style: layStyleP2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () async {
                                  _logger(
                                      'Start process of creating an abweichenden Kostensatz, build-onTap');
                                  final taetigkeit =
                                      await showDialog<Taetigkeit>(
                                    context: context,
                                    builder: (context) =>
                                        const _AddAbwTaetigkeitDialog(),
                                  );
                                  _logger('Receiving from dialog: $taetigkeit',
                                      'build-onPressed');
                                  if (taetigkeit != null) {
                                    _logger(
                                        'Triggering AddAbwTaetigkeit for: $taetigkeit',
                                        'build-onPressed');
                                    context.read<AbrechnungBloc>().add(
                                        AddAbwTaetigkeit(kunde, taetigkeit));
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      );
}

class _AddAbwTaetigkeitDialog extends StatefulWidget {
  const _AddAbwTaetigkeitDialog({this.abwTaetigkeit, Key? key})
      : super(key: key);
  final Taetigkeit? abwTaetigkeit;
  @override
  State<_AddAbwTaetigkeitDialog> createState() =>
      _AddAbwTaetigkeitDialogState();
}

class _AddAbwTaetigkeitDialogState extends State<_AddAbwTaetigkeitDialog> {
  String? _name;
  final _kostensatzController = TextEditingController();
  final _kosensatzFormattedController = TextEditingController();
  static final _logger = const Logger('__AddTaetigkeitDialogState', true);

  @override
  void initState() {
    super.initState();
    if (widget.abwTaetigkeit != null) {
      _name = widget.abwTaetigkeit!.name;
      _kostensatzController.text = EuroFormatter.withSymbolFromCentiCents(
          widget.abwTaetigkeit!.kostensatz);
      _kosensatzFormattedController.text =
          EuroFormatter.withSymbolFromCentiCents(
              widget.abwTaetigkeit!.kostensatz);
    }
  }

  @override
  Widget build(BuildContext context) => Dialog(
        child: BlocBuilder<AbrechnungBloc, AbrechnungState>(
          builder: (context, state) => ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Abweichender Kostensatz'),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Material(
                          color: layColorPrimaryShade500,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: Colors.grey[200],
                              value: _name,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  _name = newValue;
                                });
                              },
                              items: state.abrechnungSettings.taetigkeiten
                                  .map((taetigkeit) => DropdownMenuItem<String>(
                                        value: taetigkeit.name,
                                        child: Text(taetigkeit.name),
                                      ))
                                  .toList(),
                            ),
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
                        child: TextFormField(
                          controller: _kostensatzController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Kostensatz',
                            hintText: 'Preis pro Stunde der Tätigkeit',
                          ),
                          onChanged: (v) {
                            setState(() {
                              _kosensatzFormattedController.text =
                                  EuroFormatter.withoutSymbolFromDoubleString(
                                      v);
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
                            _logger('Adding a new abweichende Taetigkeit',
                                'build-onPressed');
                            if (_name == null ||
                                _name!.isEmpty ||
                                !state.abrechnungSettings.taetigkeiten
                                    .any((t) => t.name == _name)) {
                              _logger('No valid name given, aborting',
                                  'build-onPressed');
                              F.showCustomSnackbar(
                                'Sie müssen eine vorhandene Tätigkeit wählen.',
                                context: context,
                              );
                              return;
                            }
                            final input =
                                EuroFormatter.asCentiCentsFromDoubleString(
                                    _kostensatzController.text);
                            Navigator.of(context).pop(
                                Taetigkeit(name: _name!, kostensatz: input));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class _AddKundeDialog extends StatefulWidget {
  const _AddKundeDialog({Key? key}) : super(key: key);

  @override
  State<_AddKundeDialog> createState() => __AddKundeDialogState();
}

class __AddKundeDialogState extends State<_AddKundeDialog> {
  final nameController = TextEditingController();
  static final _logger = const Logger('__AddKundeDialogState', true);

  @override
  Widget build(BuildContext context) => Dialog(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Hinzufügen eines Kunden'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Bezeichnung'),
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
                          _logger('Adding a new Kunde', 'build-onPressed');
                          if (nameController.text.isEmpty) {
                            F.showCustomSnackbar(
                              'Der Name kann nicht leer sein.',
                              context: context,
                            );
                            return;
                          }
                          Navigator.of(context)
                              .pop(Kunde(name: nameController.text));
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
