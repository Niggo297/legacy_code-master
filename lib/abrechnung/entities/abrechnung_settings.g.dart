// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abrechnung_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbrechnungSettings _$$_AbrechnungSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_AbrechnungSettings(
      kunden: (json['kunden'] as List<dynamic>?)
              ?.map((e) => Kunde.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Kunde>[],
      taetigkeiten: (json['taetigkeiten'] as List<dynamic>?)
              ?.map((e) => Taetigkeit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Taetigkeit>[],
      rundenMinuten: json['rundenMinuten'] as int? ?? 15,
      rundenRichtung: json['rundenRichtung'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AbrechnungSettingsToJson(
        _$_AbrechnungSettings instance) =>
    <String, dynamic>{
      'kunden': instance.kunden,
      'taetigkeiten': instance.taetigkeiten,
      'rundenMinuten': instance.rundenMinuten,
      'rundenRichtung': instance.rundenRichtung,
    };
