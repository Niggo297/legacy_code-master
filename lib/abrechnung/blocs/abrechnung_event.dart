import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_problem.dart';
import 'package:zeit_erfassung/abrechnung/entities/einsatz.dart';
import 'package:zeit_erfassung/abrechnung/entities/kunde.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

part 'abrechnung_event.freezed.dart';

// ignore: unused_element
// static final _logger = const Logger('ZieterfassungEvent', true);

/// [AbrechnungEvent] ist die Basisklasse für alle Events, die an den
/// ZeiterfassungBloc geschickt werden können.
@freezed
class AbrechnungEvent with _$AbrechnungEvent {
  /// Event indicating the user wants to finish this day (and start an new one)
  const factory AbrechnungEvent.beendeArbeitszeit({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
  }) = BeendeArbeitszeit;

  // ignore: public_member_api_docs
  const factory AbrechnungEvent.beendeFahrt({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
  }) = BeendeFahrt;

  /// Event indicating the user wants to stop his break
  const factory AbrechnungEvent.beendePause({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
    final bool? continueTaetigkeit,
  }) = BeendePause;

  // ignore: public_member_api_docs
  const factory AbrechnungEvent.beendEinsatz({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
  }) = BeendeEinsatz;

  /// Event indicating the GUI wants the bloc to signal an error.
  const factory AbrechnungEvent.signalProblem(
    final AbrechnungProblem problem,
  ) = SignalProblem;

  // ignore: public_member_api_docs
  const factory AbrechnungEvent.starteArbeitszeit({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
  }) = StarteArbeitszeit;

  /// Event indicating the user wants to start a business trip.
  const factory AbrechnungEvent.starteFahrt({
    required final DateTime timestampEdited,
    Einsatz? einsatz,
    final DateTime? timestamp,
  }) = StarteFahrt;

  /// Event indicating the user wants to start a break.
  const factory AbrechnungEvent.startePause({
    required final DateTime timestampEdited,
    final DateTime? timestamp,
  }) = StartePause;

  /// Event indicating the user wants to start a new action.
  const factory AbrechnungEvent.starteEinsatz({
    required final DateTime timestampEdited,
    required final Einsatz einsatz,
    final DateTime? timestamp,
  }) = StarteEinsatz;

  /// Event indicating the bloc should load its data from repositories.
  const factory AbrechnungEvent.loadState() = LoadState;

  /// Event indicating the user wants to add a new Taetigkeit to AbrechnungSettings
  const factory AbrechnungEvent.addTaetigkeit(Taetigkeit taetigkeit) =
      AddTaetigkeit;

  /// Event indicating the user wants to remove a Taetigkeit from AbrechnungSettings
  const factory AbrechnungEvent.removeTaetigkeit(Taetigkeit taetigkeit) =
      RemoveTaetigkeit;

  /// Event indicating the user wants to add a new Kunde to AbrechnungSettings
  const factory AbrechnungEvent.addKunde(Kunde kunde) = AddKunde;

  /// Event indicating the user wants to remove a Kunde from AbrechnungSettings
  const factory AbrechnungEvent.removeKunde(Kunde kunde) = RemoveKunde;

  /// Event indicating the user wants to add a new abweichende Kostensatz to AbrechnungSettings
  const factory AbrechnungEvent.addAbwTaetigkeit(
      Kunde kunde, Taetigkeit taetigkeit) = AddAbwTaetigkeit;

  /// Event indicating the user wants to remove a abweichende Kostensatz from AbrechnungSettings
  const factory AbrechnungEvent.removeAbwTaetigkeit(
      Kunde kunde, Taetigkeit taetigkeit) = RemoveAbwTaetigkeit;
}
