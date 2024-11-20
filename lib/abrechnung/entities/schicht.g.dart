// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schicht.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schicht _$$_SchichtFromJson(Map<String, dynamic> json) => _$_Schicht(
      stempels: (json['stempels'] as List<dynamic>?)
              ?.map((e) => Stempel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Stempel>[],
    );

Map<String, dynamic> _$$_SchichtToJson(_$_Schicht instance) =>
    <String, dynamic>{
      'stempels': instance.stempels,
    };
