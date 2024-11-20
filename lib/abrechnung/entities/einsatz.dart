import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'einsatz.freezed.dart';
part 'einsatz.g.dart';

@freezed

/// Represents an Einsatz which is a combination of a certain Taetigkeit
/// (what was done?) and a certain Kunde (for whom it was done?)
class Einsatz with _$Einsatz {
  /// Constructs an object representing an Einsatz which is a combination of a
  /// certain Taetigkeit (what was done?) and a certain Kunde (for whom it was
  /// done?)
  const factory Einsatz({
    required String taetigkeitName,
    required String kundeName,
  }) = _Einsatz;

  /// Constructs an object representing an Einsatz which is a combination of a
  /// certain Taetigkeit (what was done?) and a certain Kunde (for whom it was
  /// done?) from a JSON data map
  factory Einsatz.fromJson(Map<String, dynamic> json) => _$EinsatzFromJson(json);
}
