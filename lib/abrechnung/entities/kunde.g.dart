// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kunde.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Kunde _$$_KundeFromJson(Map<String, dynamic> json) => _$_Kunde(
      name: json['name'] as String,
      abwTaetigeiten: (json['abwTaetigeiten'] as List<dynamic>?)
              ?.map((e) => Taetigkeit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Taetigkeit>[],
    );

Map<String, dynamic> _$$_KundeToJson(_$_Kunde instance) => <String, dynamic>{
      'name': instance.name,
      'abwTaetigeiten': instance.abwTaetigeiten,
    };
