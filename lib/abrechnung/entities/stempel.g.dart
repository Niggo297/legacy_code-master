// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stempel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArbeitszeitStempel _$$ArbeitszeitStempelFromJson(Map<String, dynamic> json) =>
    _$ArbeitszeitStempel(
      timestamp: DateTime.parse(json['timestamp'] as String),
      timestampEdited: DateTime.parse(json['timestampEdited'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArbeitszeitStempelToJson(
        _$ArbeitszeitStempel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'timestampEdited': instance.timestampEdited.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$EndeStempel _$$EndeStempelFromJson(Map<String, dynamic> json) =>
    _$EndeStempel(
      timestamp: DateTime.parse(json['timestamp'] as String),
      timestampEdited: DateTime.parse(json['timestampEdited'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EndeStempelToJson(_$EndeStempel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'timestampEdited': instance.timestampEdited.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$FahrtStempel _$$FahrtStempelFromJson(Map<String, dynamic> json) =>
    _$FahrtStempel(
      timestamp: DateTime.parse(json['timestamp'] as String),
      timestampEdited: DateTime.parse(json['timestampEdited'] as String),
      einsatz: json['einsatz'] == null
          ? null
          : Einsatz.fromJson(json['einsatz'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FahrtStempelToJson(_$FahrtStempel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'timestampEdited': instance.timestampEdited.toIso8601String(),
      'einsatz': instance.einsatz,
      'runtimeType': instance.$type,
    };

_$PauseStempel _$$PauseStempelFromJson(Map<String, dynamic> json) =>
    _$PauseStempel(
      timestamp: DateTime.parse(json['timestamp'] as String),
      timestampEdited: DateTime.parse(json['timestampEdited'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PauseStempelToJson(_$PauseStempel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'timestampEdited': instance.timestampEdited.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$EinsatzStempel _$$EinsatzStempelFromJson(Map<String, dynamic> json) =>
    _$EinsatzStempel(
      timestamp: DateTime.parse(json['timestamp'] as String),
      timestampEdited: DateTime.parse(json['timestampEdited'] as String),
      einsatz: Einsatz.fromJson(json['einsatz'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EinsatzStempelToJson(_$EinsatzStempel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'timestampEdited': instance.timestampEdited.toIso8601String(),
      'einsatz': instance.einsatz,
      'runtimeType': instance.$type,
    };
