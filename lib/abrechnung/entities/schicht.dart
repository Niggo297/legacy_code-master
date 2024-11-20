import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/entities/stempel.dart';

part 'schicht.freezed.dart';
part 'schicht.g.dart';

@freezed

/// Represents a work shift which is a collection of Stempel objects
class Schicht with _$Schicht {
  /// Constructs an object representing a work shift which is a collection of
  const factory Schicht({
    @Default(<Stempel>[]) List<Stempel> stempels,
  }) = _Schicht;

  /// Constructs an object representing a work shift which is a collection of
  /// Stempel objects from a JSON data map.
  factory Schicht.fromJson(Map<String, dynamic> json) => _$SchichtFromJson(json);
  const Schicht._(); // Added constructor

  /// Returns the last Stempel of the shift, which is always the current one.
  /// If the shift is empty, null is returned.
  Stempel? get currentStempel => stempels.isEmpty ? null : stempels.last;
}
