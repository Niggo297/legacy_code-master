// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abrechnung_periode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbrechnungPeriode _$$_AbrechnungPeriodeFromJson(Map<String, dynamic> json) =>
    _$_AbrechnungPeriode(
      schichten: (json['schichten'] as List<dynamic>?)
              ?.map((e) => Schicht.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Schicht>[Schicht()],
    );

Map<String, dynamic> _$$_AbrechnungPeriodeToJson(
        _$_AbrechnungPeriode instance) =>
    <String, dynamic>{
      'schichten': instance.schichten,
    };
