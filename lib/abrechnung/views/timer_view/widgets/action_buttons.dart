import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/confirmation_dialog.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_problem.dart';
import 'package:zeit_erfassung/abrechnung/entities/einsatz.dart';
import 'package:zeit_erfassung/abrechnung/entities/kunde.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.child, required this.onPressed});
  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) => Container(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: ElevatedButton(
            child: child,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.green.shade400),
            ),
            onPressed: onPressed,
          ),
        ),
      );
}

/// Widget to show one button for to start a shift
class ActionButtonStarteArbeitszeit extends StatelessWidget {
  /// Constructs widget to show one button for to start a shift
  const ActionButtonStarteArbeitszeit({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonStarteArbeitszeit', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Starte Arbeitszeit'),
          onPressed: () {
            _logger('Button pressed', 'build-onPressed');
            context.read<AbrechnungBloc>().add(
                  StarteArbeitszeit(
                    timestamp: DateTime.now(),
                    timestampEdited: DateTime.now(),
                  ),
                );
          },
        ),
      );
}

/// Widget to show one button for to end a shift
class ActionButtonBeendeArbeitszeit extends StatelessWidget {
  /// Constructs widget to show one button for to end a shift
  const ActionButtonBeendeArbeitszeit({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonBeendeArbeitszeit', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Beende Arbeitszeit'),
          onPressed: () {
            _logger('Button pressed', 'build-onPressed');
            context.read<AbrechnungBloc>().add(
                  BeendeArbeitszeit(
                    timestamp: DateTime.now(),
                    timestampEdited: DateTime.now(),
                  ),
                );
          },
        ),
      );
}

/// Widget to show one button for to start an Einsatz
class ActionButtonStarteEinsatz extends StatelessWidget {
  /// Constructs widget to show one button for to start an Einsatz
  const ActionButtonStarteEinsatz({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonStarteEinsatz', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Starte Einsatz'),
          onPressed: () async {
            _logger('Button pressed', 'build-onPressed');
            Einsatz? einsatz;
            final taetigkeiten =
                abrechnungState.abrechnungSettings.taetigkeiten;
            final kunden = abrechnungState.abrechnungSettings.kunden;
            einsatz = await showDialog<Einsatz?>(
              context: context,
              builder: (context) => _EinsatzDialog(
                taetigkeiten: taetigkeiten,
                kunden: kunden,
              ),
            );
            if (einsatz == null) {
              context
                  .read<AbrechnungBloc>()
                  .add(SignalProblem(EinsatzNotDefined()));
              return;
            }
            context.read<AbrechnungBloc>().add(
                  StarteEinsatz(
                    timestamp: DateTime.now(),
                    timestampEdited: DateTime.now(),
                    einsatz: einsatz,
                  ),
                );
          },
        ),
      );
}

/// Widget to show one button for to end an Einsatz
class ActionButtonBeendeEinsatz extends StatelessWidget {
  /// Constructs widget to show one button for to end a shift
  const ActionButtonBeendeEinsatz({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonBeendeEinsatz', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Beende Einsatz'),
          onPressed: () {
            _logger('Button pressed', 'build-onPressed');
            context.read<AbrechnungBloc>().add(
                  BeendeEinsatz(
                    timestamp: DateTime.now(),
                    timestampEdited: DateTime.now(),
                  ),
                );
          },
        ),
      );
}

/// Widget to show one button for to start a Fahrt
class ActionButtonStarteFahrt extends StatelessWidget {
  /// Constructs widget to show one button for to start a Fahrt
  const ActionButtonStarteFahrt({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonStarteFahrt', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Starte Fahrt'),
          onPressed: () async {
            _logger('Button pressed', 'build-onPressed');
            final currentStempel =
                abrechnungState.abrechnungPeriode.currentSchicht.currentStempel;
            if (currentStempel != null && currentStempel is EinsatzStempel) {
              final shouldContinueEinsatz = await showDialog<bool>(
                context: context,
                builder: (context) => ConfirmationDialog(
                  title: 'Tätigkeit fortführen?',
                  messages: [
                    'Sie starten eine Fahrt, während ein Einsatzes (${currentStempel.einsatz.taetigkeitName} für ${currentStempel.einsatz.kundeName}) läuft. Ist die Fahrt Bestandteil des Einsatzes?',
                    'Wählen Sie ja, falls die Fahrt zum Einsatz gehört. Wählen Sie nein, wenn die Fahrt zugleich das Ende des Einsatzes darstellt.'
                  ],
                ),
              );
              _logger('shouldContinueEinsatz: $shouldContinueEinsatz',
                  'build-onPressed');
              if (shouldContinueEinsatz != null && shouldContinueEinsatz) {
                _logger('Continue Einsatz', 'build-onPressed');
                _logger('Current Stempel Einsatz: ${currentStempel.einsatz}',
                    'build-onPressed');
                context.read<AbrechnungBloc>().add(
                      StarteFahrt(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                        einsatz: currentStempel.einsatz,
                      ),
                    );
              } else {
                _logger('Cancel Einsatz', 'build-onPressed');
                context.read<AbrechnungBloc>().add(
                      StarteFahrt(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                      ),
                    );
              }
            } else {
              _logger('Start Fahrt', 'build-onPressed');
              context.read<AbrechnungBloc>().add(
                    StarteFahrt(
                      timestamp: DateTime.now(),
                      timestampEdited: DateTime.now(),
                    ),
                  );
            }
          },
        ),
      );
}

/// Widget to show one button for to end a Fahrt
class ActionButtonBeendeFahrt extends StatelessWidget {
  /// Constructs widget to show one button for to start a Fahrt
  const ActionButtonBeendeFahrt({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonBeendeFahrt', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Beende Fahrt'),
          onPressed: () async {
            _logger('Button pressed', 'build-onPressed');
            final currentStempel =
                abrechnungState.abrechnungPeriode.currentSchicht.currentStempel;
            _logger('currentStempel: $currentStempel', 'build-onPressed');
            if ((currentStempel as FahrtStempel).einsatz != null) {
              final shouldContinueEinsatz = await showDialog<bool>(
                context: context,
                builder: (context) => ConfirmationDialog(
                  title: 'Tätigkeit fortführen?',
                  messages: [
                    'Sie beenden eine Fahrt, die Teil eines Einsatzes (${currentStempel.einsatz!.taetigkeitName} für ${currentStempel.einsatz!.kundeName}) war. Soll der Einsatz fortgeführt werden?',
                    'Wählen Sie ja, falls Sie den Einsatz fortführen. Wählen Sie nein, wenn die Fahrt zugleich das Ende des Einsatzes darstellt.',
                  ],
                ),
              );
              if (shouldContinueEinsatz != null && shouldContinueEinsatz) {
                context.read<AbrechnungBloc>().add(
                      StarteEinsatz(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                        einsatz: currentStempel.einsatz!,
                      ),
                    );
              } else {
                context.read<AbrechnungBloc>().add(
                      BeendeFahrt(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                      ),
                    );
              }
            } else {
              context.read<AbrechnungBloc>().add(
                    BeendeFahrt(
                      timestamp: DateTime.now(),
                      timestampEdited: DateTime.now(),
                    ),
                  );
            }
          },
        ),
      );
}

/// Widget to show one button for to start a Pause
class ActionButtonStartePause extends StatelessWidget {
  /// Constructs widget to show one button for to start a Pause
  const ActionButtonStartePause({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonStartePause', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('StartePause'),
          onPressed: () {
            _logger('Button pressed', 'build-onPressed');
            context.read<AbrechnungBloc>().add(
                  StartePause(
                    timestamp: DateTime.now(),
                    timestampEdited: DateTime.now(),
                  ),
                );
          },
        ),
      );
}

/// Widget to show one button for to end a Pause
class ActionButtonBeendePause extends StatelessWidget {
  /// Constructs widget to show one button for to start a Pause
  const ActionButtonBeendePause({
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('ActionButtonBeendePause', true);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungState) => _ActionButton(
          child: const Text('Beende Pause'),
          onPressed: () async {
            _logger('Button pressed', 'build-onPressed');
            // Check the Stempel before the Pause
            final stempelBeforePause = abrechnungState
                .abrechnungPeriode.currentSchicht.stempels[abrechnungState
                    .abrechnungPeriode.currentSchicht.stempels.length -
                2];
            Einsatz? einsatz;
            if (stempelBeforePause is FahrtStempel) {
              einsatz = stempelBeforePause.einsatz;
            } else if (stempelBeforePause is EinsatzStempel) {
              einsatz = stempelBeforePause.einsatz;
            }
            if (einsatz != null) {
              final shouldContinueEinsatz = await showDialog<bool>(
                context: context,
                builder: (context) => ConfirmationDialog(
                  title: 'Tätigkeit fortführen?',
                  messages: [
                    'Sie beenden eine Pause, vor der Sie in einem Einsatz (${einsatz!.taetigkeitName} für ${einsatz.kundeName}) waren. Soll der Einsatz fortgeführt werden?',
                    'Wählen Sie ja, falls Sie den Einsatz fortführen. Wählen Sie nein, wenn die Fahrt zugleich das Ende des Einsatzes darstellt.'
                  ],
                ),
              );
              if (shouldContinueEinsatz != null && shouldContinueEinsatz) {
                context.read<AbrechnungBloc>().add(
                      StarteEinsatz(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                        einsatz: einsatz,
                      ),
                    );
              } else {
                context.read<AbrechnungBloc>().add(
                      BeendePause(
                        timestamp: DateTime.now(),
                        timestampEdited: DateTime.now(),
                      ),
                    );
              }
            } else {
              context.read<AbrechnungBloc>().add(
                    BeendePause(
                      timestamp: DateTime.now(),
                      timestampEdited: DateTime.now(),
                    ),
                  );
            }
          },
        ),
      );
}

class _EinsatzDialog extends StatefulWidget {
  const _EinsatzDialog(
      {required this.taetigkeiten, required this.kunden, Key? key})
      : super(key: key);
  final List<Taetigkeit> taetigkeiten;
  final List<Kunde> kunden;

  @override
  State<_EinsatzDialog> createState() => __EinsatzDialogState();
}

class __EinsatzDialogState extends State<_EinsatzDialog> {
  Taetigkeit? taetigkeit;
  Kunde? kunde;
  @override
  Widget build(BuildContext context) => Dialog(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Einsatz definieren',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Wählen Sie die Tätigkeit und den Kunden aus.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // Dialog-Element

                  DropdownButtonHideUnderline(
                    child: DropdownButton<Taetigkeit>(
                      dropdownColor: Colors.grey[200],
                      value: taetigkeit,
                      isDense: true,
                      onChanged: (newTaetigkeit) {
                        setState(() {
                          taetigkeit = newTaetigkeit;
                        });
                      },
                      items: [
                        for (final t in widget.taetigkeiten)
                          DropdownMenuItem(
                            value: t,
                            child: Text(t.name),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  DropdownButtonHideUnderline(
                    child: DropdownButton<Kunde>(
                      dropdownColor: Colors.grey[200],
                      value: kunde,
                      isDense: true,
                      onChanged: (newKunde) {
                        setState(() {
                          kunde = newKunde;
                        });
                      },
                      items: [
                        for (final k in widget.kunden)
                          DropdownMenuItem(
                            value: k,
                            child: Text(k.name),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: const Row(
                            children: [
                              Icon(Icons.check),
                              Expanded(child: Center(child: Text('Nein'))),
                            ],
                          ),
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
                          child: const Row(
                            children: [
                              Icon(Icons.close),
                              Expanded(child: Center(child: Text('Ja'))),
                            ],
                          ),
                          onPressed: () {
                            if (kunde != null && taetigkeit != null) {
                              Navigator.of(context).pop(Einsatz(
                                  kundeName: kunde!.name,
                                  taetigkeitName: taetigkeit!.name));
                            }
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

// ignore: unused_element
class _FahrtDialog extends StatefulWidget {
  const _FahrtDialog(
      {required this.taetigkeiten, required this.kunden, Key? key})
      : super(key: key);
  final List<Taetigkeit> taetigkeiten;
  final List<Kunde> kunden;

  @override
  State<_EinsatzDialog> createState() => __EinsatzDialogState();
}
