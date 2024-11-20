import 'package:bloc/bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_problem.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';
import 'package:zeit_erfassung/abrechnung/entities/einsatz.dart';
import 'package:zeit_erfassung/abrechnung/entities/kunde.dart';
import 'package:zeit_erfassung/abrechnung/entities/schicht.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/services/local_storage_repository.dart';

/// Bloc handling the currently active [AbrechnungPeriode], the corresponding
/// [AbrechnungSettings] and everything about them.
class AbrechnungBloc extends Bloc<AbrechnungEvent, AbrechnungState> {
  static final _logger = const Logger('ZeiterfassungBloc', true);

  /// Repository for authentication process.
  final LocalStorageRepository localStorageRepository;

  /// Bloc handling the currently active [AbrechnungPeriode], the corresponding
  /// [AbrechnungSettings] and everything about them.
  AbrechnungBloc({required this.localStorageRepository})
      : super(
          const AbrechnungState.initial(),
        ) {
    on<StarteArbeitszeit>((event, emit) {
      _logger('starteArbeitszeit called', 'constructor');
      _starteArbeitszeit(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<BeendeArbeitszeit>((event, emit) {
      _logger('beendeArbeitszeit called', 'constructor');
      _beendeArbeitszeit(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<StartePause>((event, emit) {
      _logger('startePause called', 'constructor');
      _startePause(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<BeendePause>((event, emit) {
      _logger('beendePause called', 'constructor');
      _beendePause(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<StarteFahrt>((event, emit) {
      _logger('starteFahrt called', 'constructor');
      _starteFahrt(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        einsatz: event.einsatz,
        emit: emit,
      );
    });
    on<BeendeFahrt>((event, emit) {
      _logger('beendeFahrt called', 'constructor');
      _beendeFahrt(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<StarteEinsatz>((event, emit) {
      _logger('starteEinsatz called', 'constructor');
      _starteEinsatz(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        einsatz: event.einsatz,
        emit: emit,
      );
    });
    on<BeendeEinsatz>((event, emit) {
      _logger('beendeEinsatz called', 'constructor');
      _beendeTaetigkeit(
        timestamp: event.timestamp,
        timestampEdited: event.timestampEdited,
        emit: emit,
      );
    });
    on<AddTaetigkeit>((event, emit) {
      _logger('addTaetigkeit called', 'constructor');
      _addTaetigkeit(event.taetigkeit, emit);
    });
    on<RemoveTaetigkeit>((event, emit) {
      _logger('removeTaetigkeit called', 'constructor');
      _removeTaetigkeit(event.taetigkeit, emit);
    });
    on<AddKunde>((event, emit) {
      _logger('addTaetigkeit called', 'constructor');
      _addKunde(event.kunde, emit);
    });
    on<RemoveKunde>((event, emit) {
      _logger('removeKunde called', 'constructor');
      _removeKunde(event.kunde, emit);
    });
    on<AddAbwTaetigkeit>((event, emit) {
      _logger('addAbwTaetigkeit called', 'constructor');
      _addAbwTaetigkeit(event.kunde, event.taetigkeit, emit);
    });
    on<RemoveAbwTaetigkeit>((event, emit) {
      _logger('removeAbwTaetigkeit called', 'constructor');
      _removeAbwTaetigkeit(event.kunde, event.taetigkeit, emit);
    });
    on<LoadState>((event, emit) async {
      _logger('loadData called', 'constructor');
      await _loadState(emit);
    });
    on<SignalProblem>((event, emit) {
      _logger('signalProblem called', 'constructor');
      emit(AbrechnungProblematic(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: state.abrechnungSettings,
        problem: event.problem,
      ));
    });
    // this.stream.listen((newState) {
    // });
  }

  void _addSchicht(Emitter<AbrechnungState> emit) {
    _logger('runs', '_addSchicht');
    final ap = state.abrechnungPeriode;
    final newState = ap.copyWith(schichten: [...ap.schichten, const Schicht()]);
    emit(AbrechnungState(
        abrechnungPeriode: newState,
        abrechnungSettings: state.abrechnungSettings));
  }

  void _addStempel(Stempel stempel, Emitter<AbrechnungState> emit) {
    _logger('runs', '_addStempel');
    final ap = state.abrechnungPeriode;
    final currentSchicht = ap.currentSchicht;
    final newStempels = [...currentSchicht.stempels, stempel];
    final newSchicht = currentSchicht.copyWith(stempels: newStempels);
    final newSchichten =
        ap.schichten.map((s) => s == currentSchicht ? newSchicht : s).toList();
    final newAp = ap.copyWith(schichten: newSchichten);
    emit(AbrechnungState(
        abrechnungPeriode: newAp,
        abrechnungSettings: state.abrechnungSettings));
  }

  void _addTaetigkeit(Taetigkeit taetigkeit, Emitter<AbrechnungState> emit) {
    _logger('runs', '_addTaetigkeit');
    final oldTaetigkeiten = state.abrechnungSettings.taetigkeiten;
    final containsTaetigkeit =
        oldTaetigkeiten.any((t) => t.name == taetigkeit.name);
    if (containsTaetigkeit) {
      _logger('Error because Taetigkeit already exists');
      _throw(TaetigkeitAlreadyExistingProblem(), emit);
      return;
    }
    final newTaetigkeiten = [...oldTaetigkeiten, taetigkeit]
      ..sort((a, b) => a.name.compareTo(b.name));
    final newASettings =
        state.abrechnungSettings.copyWith(taetigkeiten: newTaetigkeiten);
    _logger('Emitting new state: $newASettings');
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newASettings));
  }

  void _addAbwTaetigkeit(
      Kunde kunde, Taetigkeit taetigkeit, Emitter<AbrechnungState> emit) {
    _logger('runs', '_addAbwTaetigkeit');
    // Check if Kunde exists
    if (!state.abrechnungSettings.kunden.contains(kunde)) {
      _throw(KundeNotExistingProblem(), emit);
      return;
    }
    // Check if Taetigkeit exists
    if (!state.abrechnungSettings.taetigkeiten
        .any((t) => t.name == taetigkeit.name)) {
      _throw(TaetigkeitNotExistingProblem(), emit);
      return;
    }
    var newAbwTaetigkeiten = <Taetigkeit>[];
    // Update if this AbwTaetigkeit already exists (alternative: throwing a problem)
    if (kunde.abwTaetigeiten.any((abw) => abw.name == taetigkeit.name)) {
      _logger('AbwTaetigkeit already exists -> We update this abwTaetigkeit');
      newAbwTaetigkeiten = kunde.abwTaetigeiten
          .map((abw) => abw.name == taetigkeit.name ? taetigkeit : abw)
          .toList();
    } else {
      _logger(
          'AbwTaetigkeit does not already exist -> We add this abwTaetigkeit and sort the list');
      newAbwTaetigkeiten = [...kunde.abwTaetigeiten, taetigkeit]
        ..sort((a, b) => a.name.compareTo(b.name));
    }
    final newKunde = kunde.copyWith(abwTaetigeiten: newAbwTaetigkeiten);
    final newKunden = state.abrechnungSettings.kunden
        .map((k) => k == kunde ? newKunde : k)
        .toList();
    final newAbrechnungSettings =
        state.abrechnungSettings.copyWith(kunden: newKunden);
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newAbrechnungSettings));
  }

  void _addKunde(Kunde kunde, Emitter<AbrechnungState> emit) {
    _logger('runs', '_addKunde');
    final oldKunden = state.abrechnungSettings.kunden;
    final containsKunde = oldKunden.any((t) => t.name == kunde.name);
    if (containsKunde) {
      _logger('Error because Kunde already exists');
      _throw(KundeAlreadyExistingProblem(), emit);
      return;
    }
    final newKunden = [...oldKunden, kunde]
      ..sort((a, b) => a.name.compareTo(b.name));
    final newASettings = state.abrechnungSettings.copyWith(kunden: newKunden);
    _logger('Emitting new state: $newASettings');
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newASettings));
  }

  void _beendeArbeitszeit({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_beendeArbeitszeit');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      orElse: () {
        _addStempel(
          EndeStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
          ),
          emit,
        );
      },
    );
  }

  void _beendeFahrt({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_beendeFahrt');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      fahrt: (_, __, einsatz) {
        if (einsatz != null) {
          _addStempel(
            EinsatzStempel(
              timestamp: timestamp ?? DateTime.now(),
              timestampEdited: timestampEdited,
              einsatz: einsatz,
            ),
            emit,
          );
        } else {
          _addStempel(
            ArbeitszeitStempel(
              timestamp: timestamp ?? DateTime.now(),
              timestampEdited: timestampEdited,
            ),
            emit,
          );
        }
      },
      orElse: () {
        _throw(FahrtNotYetStartedProblem(), emit);
      },
    );
  }

  void _beendePause({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    bool continueEinsatz = false,
    DateTime? timestamp,
  }) {
    _logger('runs', 'beendePause');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      pause: (_, __) {
        if (schicht.stempels.any((s) => s is EinsatzStempel) &&
            continueEinsatz) {
          final lastEinsatz = schicht.stempels
              .lastWhere((s) => s is EinsatzStempel) as EinsatzStempel;
          _addStempel(
            EinsatzStempel(
              timestamp: timestamp ?? DateTime.now(),
              timestampEdited: timestampEdited,
              einsatz: lastEinsatz.einsatz,
            ),
            emit,
          );
        } else {
          _addStempel(
            ArbeitszeitStempel(
              timestamp: timestamp ?? DateTime.now(),
              timestampEdited: timestampEdited,
            ),
            emit,
          );
        }
      },
      orElse: () {
        _throw(PauseNotYetStartedProblem(), emit);
      },
    );
  }

  void _beendeTaetigkeit({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    // ignore: unused_element
    String? taetigkeit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_beendeTaetigkeit');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      einsatz: (_, __, ___) {
        _addStempel(
          ArbeitszeitStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
          ),
          emit,
        );
      },
      orElse: () {
        _throw(EinsatzNotYetStartedProblem(), emit);
      },
    );
  }

  void _removeKunde(Kunde kunde, Emitter<AbrechnungState> emit) {
    _logger('runs', '_removeKunde');
    final oldKunden = state.abrechnungSettings.kunden;
    final containsKunde = oldKunden.contains(kunde);
    if (!containsKunde) {
      _logger('Error because Kunde does not exist', '_removeTaetigkeit');
      _throw(KundeNotExistingProblem(), emit);
      return;
    }
    // Check if Kunde was already used in this Abrechnung
    if (state.abrechnungPeriode.schichten.any((schicht) => schicht.stempels.any(
        (stempel) => stempel.maybeWhen(
            einsatz: (_, __, e) => e.kundeName == kunde.name,
            fahrt: (_, __, e) => e?.kundeName == kunde.name,
            orElse: () => false)))) {
      _logger('Error because Kunde is already used in this Abrechnung',
          '_removeTaetigkeit');
      _throw(KundeAlreadyUsedProblem(), emit);
      return;
    }
    final newKunden = oldKunden.where((t) => t.name != kunde.name).toList();
    final newASettings = state.abrechnungSettings.copyWith(kunden: newKunden);
    _logger('Emitting new state: $newASettings');
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newASettings));
  }

  void _removeTaetigkeit(Taetigkeit taetigkeit, Emitter<AbrechnungState> emit) {
    _logger('runs', '_removeTaetigkeit');
    final oldTaetigkeiten = state.abrechnungSettings.taetigkeiten;
    final containsTaetigkeit = oldTaetigkeiten.contains(taetigkeit);
    if (!containsTaetigkeit) {
      _logger('Error because Taetigkeit does not exist', '_removeTaetigkeit');
      _throw(TaetigkeitNotExistingProblem(), emit);
      return;
    }
    // Check if Taetigkeit was already used in this Abrechnung
    if (state.abrechnungPeriode.schichten.any((schicht) => schicht.stempels.any(
        (stempel) => stempel.maybeWhen(
            einsatz: (_, __, e) => e.taetigkeitName == taetigkeit.name,
            fahrt: (_, __, e) => e?.taetigkeitName == taetigkeit.name,
            orElse: () => false)))) {
      _logger('Error because Taetigkeit is already used in this Abrechnung',
          '_removeTaetigkeit');
      _throw(TaetigkeitAlreadyUsedProblem(), emit);
      return;
    }
    final newTaetigkeiten =
        oldTaetigkeiten.where((t) => t != taetigkeit).toList();
    final newASettings =
        state.abrechnungSettings.copyWith(taetigkeiten: newTaetigkeiten);
    _logger('Emitting new state: $newASettings');
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newASettings));
  }

  void _removeAbwTaetigkeit(
      Kunde kunde, Taetigkeit taetigkeit, Emitter<AbrechnungState> emit) {
    _logger('runs', '_removeAbwTaetigkeit');
    // Check if Kunde exists
    if (!state.abrechnungSettings.kunden.contains(kunde)) {
      _throw(KundeNotExistingProblem(), emit);
      return;
    }
    // Check if Taetigkeit exists
    if (!state.abrechnungSettings.taetigkeiten.contains(taetigkeit)) {
      _throw(TaetigkeitNotExistingProblem(), emit);
      return;
    }
    // Check if Kunde has abwTaetigkeit
    if (!kunde.abwTaetigeiten.contains(taetigkeit)) {
      _throw(KundeDoesNotHaveAbwTaetigkeitProblem(), emit);
      return;
    }
    final newAbwTaetigkeiten =
        kunde.abwTaetigeiten.where((abw) => abw != taetigkeit).toList();
    final newKunde = kunde.copyWith(abwTaetigeiten: newAbwTaetigkeiten);
    final newKunden = state.abrechnungSettings.kunden
        .map((k) => k == kunde ? newKunde : k)
        .toList();
    final newAbrechnungSettings =
        state.abrechnungSettings.copyWith(kunden: newKunden);
    emit(AbrechnungState(
        abrechnungPeriode: state.abrechnungPeriode,
        abrechnungSettings: newAbrechnungSettings));
  }

  void _starteArbeitszeit({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_starteArbeitszeit');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    if (schicht.stempels.isEmpty) {
      _addStempel(
        ArbeitszeitStempel(
          timestamp: timestamp ?? DateTime.now(),
          timestampEdited: timestampEdited,
        ),
        emit,
      );
      return;
    }
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _addSchicht(emit);
        _addStempel(
          ArbeitszeitStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
          ),
          emit,
        );
      },
      orElse: () {
        _throw(SchichtAlreadyStartedProblem(), emit);
      },
    );
  }

  void _starteFahrt({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    Einsatz? einsatz,
    DateTime? timestamp,
  }) {
    _logger('runs', '_starteFahrt');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtNotYetStartedProblem(), emit);
      },
      fahrt: (_, __, sTaetigkeit) {
        _throw(FahrtNotYetEndedProblem(), emit);
      },
      orElse: () {
        _addStempel(
          FahrtStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
            einsatz: einsatz,
          ),
          emit,
        );
      },
    );
  }

  void _startePause({
    required DateTime timestampEdited,
    required Emitter<AbrechnungState> emit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_startePause');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      pause: (_, __) {
        _throw(PauseAlreadyStartedProblem(), emit);
      },
      orElse: () {
        _addStempel(
          PauseStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
          ),
          emit,
        );
      },
    );
  }

  void _starteEinsatz({
    required DateTime timestampEdited,
    required Einsatz einsatz,
    required Emitter<AbrechnungState> emit,
    DateTime? timestamp,
  }) {
    _logger('runs', '_starteEinsatz');
    final ap = state.abrechnungPeriode;
    final schicht = ap.currentSchicht;
    final lastStempel = schicht.stempels.last;
    lastStempel.maybeWhen(
      ende: (_, __) {
        _throw(SchichtAlreadyEndedProblem(), emit);
      },
      einsatz: (_, __, oldEinsatz) {
        if (oldEinsatz != einsatz) {
          _addStempel(
            EinsatzStempel(
              timestamp: timestamp ?? DateTime.now(),
              timestampEdited: timestampEdited,
              einsatz: einsatz,
            ),
            emit,
          );
        } else {
          _throw(EinsatzAlreadyStartedProblem(), emit);
        }
      },
      orElse: () {
        _addStempel(
          EinsatzStempel(
            timestamp: timestamp ?? DateTime.now(),
            timestampEdited: timestampEdited,
            einsatz: einsatz,
          ),
          emit,
        );
      },
    );
  }

  void _throw(AbrechnungProblem problem, Emitter<AbrechnungState> emit) {
    _logger('Throwing $problem', '_throw');
    final ap = state.abrechnungPeriode;
    final as = state.abrechnungSettings;
    final newState = AbrechnungState.error(
      abrechnungPeriode: ap,
      abrechnungSettings: as,
      problem: problem,
    );
    emit(newState);
  }

  Future<void> _loadState(Emitter<AbrechnungState> emit) async {
    final newStateInput = await localStorageRepository.loadState();
    if (newStateInput is AbrechnungProblematic) {
      final newState = AbrechnungState.error(
        abrechnungPeriode: newStateInput.abrechnungPeriode,
        abrechnungSettings: newStateInput.abrechnungSettings,
        problem: newStateInput.problem,
      );
      emit(newState);
    } else {
      final newState = AbrechnungState(
        abrechnungPeriode: newStateInput.abrechnungPeriode,
        abrechnungSettings: newStateInput.abrechnungSettings,
      );
      emit(newState);
    }
  }
}
