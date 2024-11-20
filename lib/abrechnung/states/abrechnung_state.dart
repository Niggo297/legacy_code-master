import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_problem.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_periode.dart';
import 'package:zeit_erfassung/abrechnung/entities/abrechnung_settings.dart';

part 'abrechnung_state.freezed.dart';

@freezed

/// State of the Abrechnung bloc
class AbrechnungState with _$AbrechnungState {
  /// Constructs the state of the Abrechnung bloc
  const factory AbrechnungState({
    required final AbrechnungPeriode abrechnungPeriode,
    required final AbrechnungSettings abrechnungSettings,
  }) = _AbrechnungState;

  /// Internal constructor for creating the state of the Abrechnung bloc
  const AbrechnungState._();

  /// Constructs the state of the Abrechnung after a problem occured
  const factory AbrechnungState.error({
    required final AbrechnungPeriode abrechnungPeriode,
    required final AbrechnungSettings abrechnungSettings,
    required final AbrechnungProblem problem,
  }) = AbrechnungProblematic;

  /// Constructs the state of the Abrechnung while loading
  const factory AbrechnungState.loading({
    @Default(AbrechnungPeriode()) final AbrechnungPeriode abrechnungPeriode,
    @Default(AbrechnungSettings()) final AbrechnungSettings abrechnungSettings,
  }) = AbrechnungLoading;

  /// Constructs the state of the Abrechnung before initialization
  const factory AbrechnungState.initial({
    @Default(AbrechnungPeriode()) final AbrechnungPeriode abrechnungPeriode,
    @Default(AbrechnungSettings()) final AbrechnungSettings abrechnungSettings,
  }) = AbrechnungInitial;
}
