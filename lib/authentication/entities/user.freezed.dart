// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _User.fromJson(json);
    case 'unverified':
      return UnverifiedUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({String? uid, String? email, String? name, String? photoUrl}) {
    return _User(
      uid: uid,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );
  }

  UnverifiedUser unverified(
      {String? uid, String? email, String? name, String? photoUrl}) {
    return UnverifiedUser(
      uid: uid,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get uid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, String? email, String? name, String? photoUrl)
        $default, {
    required TResult Function(
            String? uid, String? email, String? name, String? photoUrl)
        unverified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(UnverifiedUser value) unverified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String? uid, String? email, String? name, String? photoUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String? uid, String? email, String? name, String? photoUrl});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_User(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User({this.uid, this.email, this.name, this.photoUrl, String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? uid;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? photoUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, String? email, String? name, String? photoUrl)
        $default, {
    required TResult Function(
            String? uid, String? email, String? name, String? photoUrl)
        unverified,
  }) {
    return $default(uid, email, name, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
  }) {
    return $default?.call(uid, email, name, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, email, name, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(UnverifiedUser value) unverified,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {String? uid, String? email, String? name, String? photoUrl}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get uid;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnverifiedUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UnverifiedUserCopyWith(
          UnverifiedUser value, $Res Function(UnverifiedUser) then) =
      _$UnverifiedUserCopyWithImpl<$Res>;
  @override
  $Res call({String? uid, String? email, String? name, String? photoUrl});
}

/// @nodoc
class _$UnverifiedUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UnverifiedUserCopyWith<$Res> {
  _$UnverifiedUserCopyWithImpl(
      UnverifiedUser _value, $Res Function(UnverifiedUser) _then)
      : super(_value, (v) => _then(v as UnverifiedUser));

  @override
  UnverifiedUser get _value => super._value as UnverifiedUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(UnverifiedUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnverifiedUser extends UnverifiedUser with DiagnosticableTreeMixin {
  _$UnverifiedUser(
      {this.uid, this.email, this.name, this.photoUrl, String? $type})
      : $type = $type ?? 'unverified',
        super._();

  factory _$UnverifiedUser.fromJson(Map<String, dynamic> json) =>
      _$$UnverifiedUserFromJson(json);

  @override
  final String? uid;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? photoUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.unverified(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.unverified'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnverifiedUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  $UnverifiedUserCopyWith<UnverifiedUser> get copyWith =>
      _$UnverifiedUserCopyWithImpl<UnverifiedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? uid, String? email, String? name, String? photoUrl)
        $default, {
    required TResult Function(
            String? uid, String? email, String? name, String? photoUrl)
        unverified,
  }) {
    return unverified(uid, email, name, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
  }) {
    return unverified?.call(uid, email, name, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        $default, {
    TResult Function(
            String? uid, String? email, String? name, String? photoUrl)?
        unverified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(uid, email, name, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(UnverifiedUser value) unverified,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UnverifiedUser value)? unverified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnverifiedUserToJson(this);
  }
}

abstract class UnverifiedUser extends User {
  factory UnverifiedUser(
      {String? uid,
      String? email,
      String? name,
      String? photoUrl}) = _$UnverifiedUser;
  UnverifiedUser._() : super._();

  factory UnverifiedUser.fromJson(Map<String, dynamic> json) =
      _$UnverifiedUser.fromJson;

  @override
  String? get uid;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  $UnverifiedUserCopyWith<UnverifiedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
