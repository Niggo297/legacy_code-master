import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';

part 'kunde.freezed.dart';
part 'kunde.g.dart';

@freezed

/// Represents a customer
class Kunde with _$Kunde {
  /// Constructs an object representing a customer
  const factory Kunde({
    required String name,
    @Default(<Taetigkeit>[]) List<Taetigkeit> abwTaetigeiten,
  }) = _Kunde;

  /// Constructs an object representing a customer from a JSON data map
  factory Kunde.fromJson(Map<String, dynamic> json) => _$KundeFromJson(json);
  const Kunde._();
}
