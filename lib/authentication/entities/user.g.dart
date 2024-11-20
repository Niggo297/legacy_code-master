// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'runtimeType': instance.$type,
    };

_$UnverifiedUser _$$UnverifiedUserFromJson(Map<String, dynamic> json) =>
    _$UnverifiedUser(
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnverifiedUserToJson(_$UnverifiedUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'runtimeType': instance.$type,
    };
