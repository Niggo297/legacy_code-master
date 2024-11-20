import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/date_formatter.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';

/// Page that shows a list / table presentation of a workday
class StempelListView extends StatelessWidget {
  static final _logger = const Logger('StempelTableView', false);

  /// Constructs page that shows a list / table presentation of a workday
  const StempelListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AbrechnungBloc, AbrechnungState>(
        builder: (context, abrechnungstate) {
          final schicht = abrechnungstate.abrechnungPeriode.currentSchicht;
          final stempels = schicht.stempels;
          final lengths = <int>[];
          for (var i = 0; i < stempels.length - 1; i++) {
            _logger(
                'Comparing ${stempels[i].timestampEdited} and ${stempels[i + 1].timestampEdited}',
                'build');
            _logger(
                '-> Result: ${stempels[i + 1].timestampEdited.difference(stempels[i].timestampEdited).inMinutes}',
                'build');
            lengths.add(stempels[i + 1]
                .timestampEdited
                .difference(stempels[i].timestampEdited)
                .inMinutes);
          }
          return stempels.isEmpty
              ? Container(
                  padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: const Center(
                    child: Text('Keine Stempel'),
                  ),
                )
              : SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: DataTable(
                      columns: [
                        const DataColumn(
                          label: Text('von',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        const DataColumn(
                          label: Text('bis',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        const DataColumn(
                          label: Text('Dauer(m)',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        const DataColumn(
                          label: Text('Typ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                      rows: [
                        for (var i = 0; i < stempels.length - 1; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  DateFormatter.hhmm(
                                      stempels[i].timestampEdited),
                                ),
                              ),
                              DataCell(
                                Text(
                                  DateFormatter.hhmm(
                                      stempels[i + 1].timestampEdited),
                                ),
                              ),
                              DataCell(
                                Text(
                                  '${lengths[i]}',
                                ),
                              ),
                              DataCell(
                                Text(
                                  stempels[i].typeString,
                                ),
                              ),
                            ],
                          ),
                        if (stempels.isNotEmpty &&
                            stempels.last is! EndeStempel)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  DateFormatter.hhmm(
                                      stempels.last.timestampEdited),
                                ),
                              ),
                              const DataCell(
                                Text(
                                  '???',
                                ),
                              ),
                              const DataCell(
                                Text(
                                  'N.N.',
                                ),
                              ),
                              DataCell(
                                Text(
                                  stempels.first.typeString,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                );
        },
      );
}
