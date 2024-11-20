import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/entities/einsatz.dart';

part 'stempel.freezed.dart';
part 'stempel.g.dart';

@freezed

/// Represents a Stempel which is a marker for a beginning time period.
class Stempel with _$Stempel {
  /// Constructs an object representing a Stempel marking the beginning of
  /// a work period.
  factory Stempel.arbeitszeit({
    required DateTime timestamp,
    required DateTime timestampEdited,
  }) = ArbeitszeitStempel;

  /// Constructs an object representing a Stempel for the end of the workday /
  /// shift.
  factory Stempel.ende({
    required DateTime timestamp,
    required DateTime timestampEdited,
  }) = EndeStempel;

  /// Constructs an object representing a Stempel marking the beginning of a
  /// business trip.
  factory Stempel.fahrt({
    required DateTime timestamp,
    required DateTime timestampEdited,
    Einsatz? einsatz,
  }) = FahrtStempel;

  /// Constructs an object representing a Stempel from a JSON data map.
  factory Stempel.fromJson(Map<String, dynamic> json) => _$StempelFromJson(json);

  /// Constructs a Stempel marking the beginning of a pause.
  factory Stempel.pause({
    required DateTime timestamp,
    required DateTime timestampEdited,
  }) = PauseStempel;

  /// Constructs a Stempel marking the beginning of a Einsatz.
  factory Stempel.einsatz({
    required DateTime timestamp,
    required DateTime timestampEdited,
    required Einsatz einsatz,
  }) = EinsatzStempel;
  const Stempel._();

  /// Returns the color of the Stempel.
  Color get color => when(
        ende: (_, __) => Colors.white,
        arbeitszeit: (_, __) => Colors.blue,
        pause: (_, __) => Colors.green,
        fahrt: (_, __, ___) => Colors.grey,
        einsatz: (_, __, ___) => Colors.orange,
      );

  /// Returns the icon of the Stempel.
  IconData get icon => when(
        ende: (_, __) => Icons.gps_off,
        arbeitszeit: (_, __) => Icons.construction,
        pause: (_, __) => Icons.pause,
        fahrt: (_, __, ___) => Icons.drive_eta,
        einsatz: (_, __, ___) => Icons.monetization_on_outlined,
      );

  /// Returns the possible actions based on the current Stempel state.
  List<String> get possibleOptions => when(
        ende: (_, __) => [
          'StarteArbeitszeit',
        ],
        arbeitszeit: (_, __) => ['BeendeArbeitszeit', 'StartePause', 'StarteFahrt', 'StarteEinsatz'],
        pause: (_, __) => ['BeendeArbeitszeit', 'BeendePause', 'StarteFahrt', 'StarteEinsatz'],
        fahrt: (_, __, ___) => ['BeendeArbeitszeit', 'StartePause', 'BeendeFahrt', 'StarteEinsatz'],
        einsatz: (_, __, ___) => ['BeendeArbeitszeit', 'StartePause', 'StarteFahrt', 'BeendeEinsatz'],
      );

  /// Returns a String representation of the Stempel class.
  String get typeString => when(
        ende: (_, __) => 'Ende',
        arbeitszeit: (_, __) => 'Arbeitszeit',
        pause: (_, __) => 'Pause',
        fahrt: (_, __, ___) => 'Fahrt',
        einsatz: (_, __, ___) => 'Einsatz',
      );
}
