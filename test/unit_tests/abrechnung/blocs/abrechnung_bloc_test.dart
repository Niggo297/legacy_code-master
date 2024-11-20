// ignore_for_file: avoid_types_on_closure_parameters

import 'package:bloc_test/bloc_test.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';
import 'package:zeit_erfassung/abrechnung/entities/einsatz.dart';
import 'package:zeit_erfassung/abrechnung/entities/schicht.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/helpers/zeit_calculator.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/services/mock_local_storage_repository.dart';

void main() {
  final timestamp = DateTime.now();
  final timestamp0630 = DateTime(2022, 3, 1, 6, 30);
  final timestamp0700 = DateTime(2022, 3, 1, 7);
  final timestamp0730 = DateTime(2022, 3, 1, 7, 30);
  final timestamp0800 = DateTime(2022, 3, 1, 8);
  final timestamp0900 = DateTime(2022, 3, 1, 9);
  final timestamp0930 = DateTime(2022, 3, 1, 9, 30);
  final timestamp1000 = DateTime(2022, 3, 1, 10);
  final timestamp1100 = DateTime(2022, 3, 1, 11);
  final timestamp1130 = DateTime(2022, 3, 1, 11, 30);
  final timestamp1230 = DateTime(2022, 3, 1, 12, 30);
  final timestamp1300 = DateTime(2022, 3, 1, 13);
  final timestamp1400 = DateTime(2022, 3, 1, 14);
  final timestamp1500 = DateTime(2022, 3, 1, 15);
  final timestamp1530 = DateTime(2022, 3, 1, 15, 30);
  final timestamp1600 = DateTime(2022, 3, 1, 16);
  final timestamp1630 = DateTime(2022, 3, 1, 16, 30);
  final timestamp1700 = DateTime(2022, 3, 1, 17);
  blocTest(
    'initial state',
    build: () => AbrechnungBloc(localStorageRepository: const MockLocalStorageRepository()),
    expect: () => [],
  );

  blocTest(
    'UseCase #1',
    build: () => AbrechnungBloc(localStorageRepository: const MockLocalStorageRepository()),
    act: (AbrechnungBloc bloc) {
      bloc.add(StarteArbeitszeit(timestamp: timestamp, timestampEdited: timestamp0800));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp0900,
        einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
      ));
      bloc.add(StartePause(timestamp: timestamp, timestampEdited: timestamp1230));
      bloc.add(BeendePause(timestamp: timestamp, timestampEdited: timestamp1300));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp1300,
        einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
      ));
      bloc.add(BeendeEinsatz(timestamp: timestamp, timestampEdited: timestamp1400));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp1400,
        einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
      ));
      bloc.add(BeendeEinsatz(timestamp: timestamp, timestampEdited: timestamp1500));
      bloc.add(BeendeArbeitszeit(timestamp: timestamp, timestampEdited: timestamp1700));
    },
    skip: 8,
    expect: () => [
      AbrechnungState(
        abrechnungPeriode: AbrechnungPeriode(
          schichten: [
            Schicht(
              stempels: [
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp0800),
                EinsatzStempel(
                    timestamp: timestamp,
                    timestampEdited: timestamp0900,
                    einsatz: const Einsatz(
                      taetigkeitName: 'Grafikdesign',
                      kundeName: 'Kunde A',
                    )),
                PauseStempel(timestamp: timestamp, timestampEdited: timestamp1230),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1300),
                EinsatzStempel(
                    timestamp: timestamp,
                    timestampEdited: timestamp1300,
                    einsatz: const Einsatz(
                      taetigkeitName: 'Grafikdesign',
                      kundeName: 'Kunde A',
                    )),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1400),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1400,
                  einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
                ),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1500),
                EndeStempel(timestamp: timestamp, timestampEdited: timestamp1700),
              ],
            ),
          ],
        ),
        abrechnungSettings: const AbrechnungSettings(),
      ),
    ],
    verify: (AbrechnungBloc bloc) {
      final calc = ZeitCalculator(
        schicht: bloc.state.abrechnungPeriode.schichten.last,
        abrechnungSettings: bloc.state.abrechnungSettings,
      );
      final ist = calc.getMinutesForSchicht();
      final soll = {
        'Arbeitszeit': 180,
        'Einsatz@Grafikdesign@Kunde A': 270,
        'Einsatz@Print@Kunde B': 60,
        'Pause': 30,
      };
      expect(const DeepCollectionEquality().equals(soll, ist), true);
    },
  );

  // Other than in the base test, here we achieve the same result while skipping
  // some Stempel events. For example we do not end a pause, but just start the
  // next one. This leads to less status changes, but essentially the same result.
  blocTest(
    'UseCase #1, alternativ 1',
    build: () => AbrechnungBloc(localStorageRepository: const MockLocalStorageRepository()),
    act: (AbrechnungBloc bloc) {
      bloc.add(StarteArbeitszeit(timestamp: timestamp, timestampEdited: timestamp0800));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp0900,
        einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
      ));
      bloc.add(StartePause(timestamp: timestamp, timestampEdited: timestamp1230));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp1300,
        einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
      ));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp1400,
        einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
      ));
      bloc.add(BeendeEinsatz(timestamp: timestamp, timestampEdited: timestamp1500));
      bloc.add(BeendeArbeitszeit(timestamp: timestamp, timestampEdited: timestamp1700));
    },
    skip: 6,
    expect: () => [
      AbrechnungState(
        abrechnungPeriode: AbrechnungPeriode(
          schichten: [
            Schicht(
              stempels: [
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp0800),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp0900,
                  einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
                ),
                PauseStempel(timestamp: timestamp, timestampEdited: timestamp1230),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1300,
                  einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
                ),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1400,
                  einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
                ),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1500),
                EndeStempel(timestamp: timestamp, timestampEdited: timestamp1700),
              ],
            ),
          ],
        ),
        abrechnungSettings: const AbrechnungSettings(),
      ),
    ],
    verify: (AbrechnungBloc bloc) {
      final calc = ZeitCalculator(
        schicht: bloc.state.abrechnungPeriode.schichten.last,
        abrechnungSettings: bloc.state.abrechnungSettings,
      );
      final ist = calc.getMinutesForSchicht();
      print('ist: $ist');
      final soll = {
        'Arbeitszeit': 180,
        'Taetigkeit@Grafikdesign@Kunde A': 270,
        'Taetigkeit@Print@Kunde B': 60,
        'Pause': 30,
      };
      expect(const DeepCollectionEquality().equals(soll, ist), true);
    },
  );

  // Here, we do use some overrides to change phases even faster.
  blocTest(
    'UseCase #1, alternativ 2',
    build: () => AbrechnungBloc(localStorageRepository: const MockLocalStorageRepository()),
    act: (AbrechnungBloc bloc) {
      bloc.add(StarteArbeitszeit(timestamp: timestamp, timestampEdited: timestamp0800));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp0900,
        einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
      ));
      bloc.add(StartePause(timestamp: timestamp, timestampEdited: timestamp1230));
      bloc.add(BeendePause(
        timestamp: timestamp,
        timestampEdited: timestamp1300,
        continueTaetigkeit: true,
      ));
      bloc.add(StarteEinsatz(
        timestamp: timestamp,
        timestampEdited: timestamp1400,
        einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
      ));
      bloc.add(BeendeEinsatz(timestamp: timestamp, timestampEdited: timestamp1500));
      bloc.add(BeendeArbeitszeit(timestamp: timestamp, timestampEdited: timestamp1700));
    },
    skip: 6,
    expect: () => [
      AbrechnungState(
        abrechnungPeriode: AbrechnungPeriode(
          schichten: [
            Schicht(
              stempels: [
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp0800),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp0900,
                  einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
                ),
                PauseStempel(timestamp: timestamp, timestampEdited: timestamp1230),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1300,
                  einsatz: const Einsatz(taetigkeitName: 'Grafikdesign', kundeName: 'Kunde A'),
                ),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1400,
                  einsatz: const Einsatz(taetigkeitName: 'Print', kundeName: 'Kunde B'),
                ),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1500),
                EndeStempel(timestamp: timestamp, timestampEdited: timestamp1700),
              ],
            ),
          ],
        ),
        abrechnungSettings: const AbrechnungSettings(),
      ),
    ],
    verify: (AbrechnungBloc bloc) {
      final calc = ZeitCalculator(
        schicht: bloc.state.abrechnungPeriode.schichten.last,
        abrechnungSettings: bloc.state.abrechnungSettings,
      );
      final ist = calc.getMinutesForSchicht();
      final soll = {
        'Arbeitszeit': 180,
        'Einsatz@Grafikdesign@Kunde A': 270,
        'Einsatz@Print@Kunde B': 60,
        'Pause': 30,
      };
      expect(const DeepCollectionEquality().equals(soll, ist), true);
    },
  );

  blocTest(
    'UseCase #2',
    build: () => AbrechnungBloc(localStorageRepository: const MockLocalStorageRepository()),
    act: (AbrechnungBloc bloc) {
      bloc.add(StarteArbeitszeit(timestamp: timestamp, timestampEdited: timestamp0630));
      bloc.add(StarteFahrt(timestamp: timestamp, timestampEdited: timestamp0700));
      bloc.add(
        StarteEinsatz(
          timestamp: timestamp,
          timestampEdited: timestamp0730,
          einsatz: const Einsatz(taetigkeitName: 'Montage', kundeName: 'Kunde A'),
        ),
      );
      bloc.add(StartePause(timestamp: timestamp, timestampEdited: timestamp0930));
      bloc.add(
        BeendePause(
          timestamp: timestamp,
          timestampEdited: timestamp1000,
          continueTaetigkeit: true,
        ),
      );
      bloc.add(StarteFahrt(timestamp: timestamp, timestampEdited: timestamp1100));
      bloc.add(
        StarteEinsatz(
          timestamp: timestamp,
          timestampEdited: timestamp1130,
          einsatz: const Einsatz(taetigkeitName: 'Wartung', kundeName: 'Kunde B'),
        ),
      );
      bloc.add(StarteFahrt(timestamp: timestamp, timestampEdited: timestamp1530));
      bloc.add(BeendeFahrt(timestamp: timestamp, timestampEdited: timestamp1600));
      bloc.add(BeendeArbeitszeit(timestamp: timestamp, timestampEdited: timestamp1630));
    },
    skip: 9,
    expect: () => [
      AbrechnungState(
        abrechnungPeriode: AbrechnungPeriode(
          schichten: [
            Schicht(
              stempels: [
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp0630),
                FahrtStempel(timestamp: timestamp, timestampEdited: timestamp0700),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp0730,
                  einsatz: const Einsatz(taetigkeitName: 'Montage', kundeName: 'Kunde A'),
                ),
                PauseStempel(timestamp: timestamp, timestampEdited: timestamp0930),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1000,
                  einsatz: const Einsatz(taetigkeitName: 'Montage', kundeName: 'Kunde A'),
                ),
                FahrtStempel(timestamp: timestamp, timestampEdited: timestamp1100),
                EinsatzStempel(
                  timestamp: timestamp,
                  timestampEdited: timestamp1130,
                  einsatz: const Einsatz(taetigkeitName: 'Wartung', kundeName: 'Kunde B'),
                ),
                FahrtStempel(timestamp: timestamp, timestampEdited: timestamp1530),
                ArbeitszeitStempel(timestamp: timestamp, timestampEdited: timestamp1600),
                EndeStempel(timestamp: timestamp, timestampEdited: timestamp1630),
              ],
            ),
          ],
        ),
        abrechnungSettings: const AbrechnungSettings(),
      ),
    ],
    verify: (AbrechnungBloc bloc) {
      final calc = ZeitCalculator(
        schicht: bloc.state.abrechnungPeriode.schichten.last,
        abrechnungSettings: bloc.state.abrechnungSettings,
      );
      final ist = calc.getMinutesForSchicht();
      // log('ist: $ist');
      final soll = {
        'Arbeitszeit': 60,
        'Fahrt': 90,
        'Einsatz@Montage@Kunde A': 180,
        'Einsatz@Wartung@Kunde B': 240,
        'Pause': 30,
      };
      expect(const DeepCollectionEquality().equals(soll, ist), true);
    },
  );
}
