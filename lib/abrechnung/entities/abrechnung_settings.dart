import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/abrechnung/entities/kunde.dart';
import 'package:zeit_erfassung/abrechnung/entities/taetigkeit.dart';

part 'abrechnung_settings.freezed.dart';
part 'abrechnung_settings.g.dart';

@freezed

/// Represents the settings for the current AbrechnungPeriode
class AbrechnungSettings with _$AbrechnungSettings {
  /// Constructs an object representing the settings for the current AbrechnungPeriode
  const factory AbrechnungSettings({
    @Default(<Kunde>[]) List<Kunde> kunden,
    @Default(<Taetigkeit>[]) List<Taetigkeit> taetigkeiten,
    @Default(15) int rundenMinuten,
    @Default(0) int rundenRichtung,
  }) = _AbrechnungSettings;

  /// Constructs an object representing the settings for the current
  /// AbrechnungPeriode from a JSON data map
  factory AbrechnungSettings.fromJson(Map<String, dynamic> json) => _$AbrechnungSettingsFromJson(json);
  const AbrechnungSettings._();
}
