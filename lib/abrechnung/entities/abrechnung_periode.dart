import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/entities/schicht.dart';

part 'abrechnung_periode.freezed.dart';
part 'abrechnung_periode.g.dart';

@freezed

/// Represents a period of time in which the user has several work shifts.
class AbrechnungPeriode with _$AbrechnungPeriode {
  /// Constructs an object representing a period of time in which the user has several work shifts.
  const factory AbrechnungPeriode({
    @Default(<Schicht>[Schicht()]) List<Schicht> schichten,
  }) = _AbrechnungPeriode;

  /// Constructs an object representing a period of time in which the user has
  /// several work shifts from a JSON data map.
  factory AbrechnungPeriode.fromJson(Map<String, dynamic> json) => _$AbrechnungPeriodeFromJson(json);
  const AbrechnungPeriode._();

  /// Returns the last Schicht of the period, which is always the current one.
  Schicht get currentSchicht => schichten.last;
}
