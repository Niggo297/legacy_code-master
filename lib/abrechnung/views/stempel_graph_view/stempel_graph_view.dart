import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/date_formatter.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

/// Page that shows a graphical representation of a workday
class StempelGraphView extends StatelessWidget {
  static final _logger = const Logger('ProtocolView', true);

  /// Constructs page that shows a graphical representation of a workday
  const StempelGraphView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(builder: (context, abrechnungState) {
        final schicht = abrechnungState.abrechnungPeriode.currentSchicht;
        return SizedBox.expand(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final useableScreenHight = constraints.maxHeight;
              _logger('height: $useableScreenHight', 'build');
              final stempels = schicht.stempels;
              final stempelDauerGesamt = stempels.length > 1
                  ? stempels.last.timestampEdited.difference(stempels.first.timestampEdited).inSeconds
                  : 20;
              const heightPerStempel = 25.0;
              final heightWithoutMinimums = useableScreenHight - stempels.length * heightPerStempel;
              final lengthStempelsAdditional = <double>[];
              for (var i = 0; i < stempels.length - 1; i++) {
                final stempelDauerInSeconds =
                    stempels[i + 1].timestampEdited.difference(stempels[i].timestampEdited).inSeconds.toDouble();
                lengthStempelsAdditional.add(
                  (stempelDauerInSeconds / stempelDauerGesamt) * heightWithoutMinimums + heightPerStempel,
                );
              }
              return Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                    width: double.infinity,
                    child: (stempels.isEmpty)
                        ? SizedBox(
                            height: useableScreenHight - 16,
                            child: const Center(
                              child: Text('Keine Stempel'),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                      DateFormatter.ddMMyyyy(stempels.first.timestampEdited),
                                    ),
                                  ),
                                  ...List.generate(
                                    150 ~/ 10,
                                    (index) => Expanded(
                                      child: Container(
                                        color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                                        height: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              for (var i = 0; i < schicht.stempels.length - 1; i++)
                                Container(
                                  height: lengthStempelsAdditional[i],
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4),
                                          child: Container(
                                            height: 15000,
                                            decoration: BoxDecoration(
                                              color: stempels[i].color,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4),
                                          child: Container(
                                            child: Text(stempels[i].typeString),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (stempels.length > 1)
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        DateFormatter.ddMMyyyy(stempels.last.timestampEdited),
                                      ),
                                    ),
                                    ...List.generate(
                                      150 ~/ 10,
                                      (index) => Expanded(
                                        child: Container(
                                          color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              if (stempels.isNotEmpty)
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4),
                                        child: Container(
                                          height: 16,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: stempels.last.color,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4),
                                        child: Container(
                                          child: Text(
                                            stempels.last.typeString,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                  ),
                ),
              );
            },
          ),
        );
      });
}
