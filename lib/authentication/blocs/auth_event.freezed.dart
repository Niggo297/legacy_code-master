// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  ConfirmationEmailRequested confirmationEmailRequested() {
    return ConfirmationEmailRequested();
  }

  GoogleSignInRequested googleSignInRequested() {
    return GoogleSignInRequested();
  }

  PasswordResetRequested passwordResetRequested(String email) {
    return PasswordResetRequested(
      email,
    );
  }

  SignInRequested signInRequested(String email, String password) {
    return SignInRequested(
      email,
      password,
    );
  }

  SignOutRequested signOutRequested() {
    return SignOutRequested();
  }

  SignUpRequested signUpRequested(String email, String password) {
    return SignUpRequested(
      email,
      password,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $ConfirmationEmailRequestedCopyWith<$Res> {
  factory $ConfirmationEmailRequestedCopyWith(ConfirmationEmailRequested value,
          $Res Function(ConfirmationEmailRequested) then) =
      _$ConfirmationEmailRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmationEmailRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $ConfirmationEmailRequestedCopyWith<$Res> {
  _$ConfirmationEmailRequestedCopyWithImpl(ConfirmationEmailRequested _value,
      $Res Function(ConfirmationEmailRequested) _then)
      : super(_value, (v) => _then(v as ConfirmationEmailRequested));

  @override
  ConfirmationEmailRequested get _value =>
      super._value as ConfirmationEmailRequested;
}

/// @nodoc

class _$ConfirmationEmailRequested extends ConfirmationEmailRequested
    with DiagnosticableTreeMixin {
  _$ConfirmationEmailRequested() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.confirmationEmailRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthEvent.confirmationEmailRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConfirmationEmailRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return confirmationEmailRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return confirmationEmailRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (confirmationEmailRequested != null) {
      return confirmationEmailRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return confirmationEmailRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return confirmationEmailRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (confirmationEmailRequested != null) {
      return confirmationEmailRequested(this);
    }
    return orElse();
  }
}

abstract class ConfirmationEmailRequested extends AuthEvent {
  factory ConfirmationEmailRequested() = _$ConfirmationEmailRequested;
  ConfirmationEmailRequested._() : super._();
}

/// @nodoc
abstract class $GoogleSignInRequestedCopyWith<$Res> {
  factory $GoogleSignInRequestedCopyWith(GoogleSignInRequested value,
          $Res Function(GoogleSignInRequested) then) =
      _$GoogleSignInRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleSignInRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $GoogleSignInRequestedCopyWith<$Res> {
  _$GoogleSignInRequestedCopyWithImpl(
      GoogleSignInRequested _value, $Res Function(GoogleSignInRequested) _then)
      : super(_value, (v) => _then(v as GoogleSignInRequested));

  @override
  GoogleSignInRequested get _value => super._value as GoogleSignInRequested;
}

/// @nodoc

class _$GoogleSignInRequested extends GoogleSignInRequested
    with DiagnosticableTreeMixin {
  _$GoogleSignInRequested() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.googleSignInRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.googleSignInRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleSignInRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return googleSignInRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return googleSignInRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return googleSignInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return googleSignInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInRequested extends AuthEvent {
  factory GoogleSignInRequested() = _$GoogleSignInRequested;
  GoogleSignInRequested._() : super._();
}

/// @nodoc
abstract class $PasswordResetRequestedCopyWith<$Res> {
  factory $PasswordResetRequestedCopyWith(PasswordResetRequested value,
          $Res Function(PasswordResetRequested) then) =
      _$PasswordResetRequestedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$PasswordResetRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $PasswordResetRequestedCopyWith<$Res> {
  _$PasswordResetRequestedCopyWithImpl(PasswordResetRequested _value,
      $Res Function(PasswordResetRequested) _then)
      : super(_value, (v) => _then(v as PasswordResetRequested));

  @override
  PasswordResetRequested get _value => super._value as PasswordResetRequested;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(PasswordResetRequested(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordResetRequested extends PasswordResetRequested
    with DiagnosticableTreeMixin {
  _$PasswordResetRequested(this.email) : super._();

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.passwordResetRequested(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.passwordResetRequested'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordResetRequested &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $PasswordResetRequestedCopyWith<PasswordResetRequested> get copyWith =>
      _$PasswordResetRequestedCopyWithImpl<PasswordResetRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return passwordResetRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return passwordResetRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (passwordResetRequested != null) {
      return passwordResetRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return passwordResetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return passwordResetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (passwordResetRequested != null) {
      return passwordResetRequested(this);
    }
    return orElse();
  }
}

abstract class PasswordResetRequested extends AuthEvent {
  factory PasswordResetRequested(String email) = _$PasswordResetRequested;
  PasswordResetRequested._() : super._();

  String get email;
  @JsonKey(ignore: true)
  $PasswordResetRequestedCopyWith<PasswordResetRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestedCopyWith<$Res> {
  factory $SignInRequestedCopyWith(
          SignInRequested value, $Res Function(SignInRequested) then) =
      _$SignInRequestedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInRequestedCopyWith<$Res> {
  _$SignInRequestedCopyWithImpl(
      SignInRequested _value, $Res Function(SignInRequested) _then)
      : super(_value, (v) => _then(v as SignInRequested));

  @override
  SignInRequested get _value => super._value as SignInRequested;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SignInRequested(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInRequested extends SignInRequested with DiagnosticableTreeMixin {
  _$SignInRequested(this.email, this.password) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInRequested'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInRequested &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $SignInRequestedCopyWith<SignInRequested> get copyWith =>
      _$SignInRequestedCopyWithImpl<SignInRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested extends AuthEvent {
  factory SignInRequested(String email, String password) = _$SignInRequested;
  SignInRequested._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $SignInRequestedCopyWith<SignInRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutRequestedCopyWith<$Res> {
  factory $SignOutRequestedCopyWith(
          SignOutRequested value, $Res Function(SignOutRequested) then) =
      _$SignOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutRequestedCopyWith<$Res> {
  _$SignOutRequestedCopyWithImpl(
      SignOutRequested _value, $Res Function(SignOutRequested) _then)
      : super(_value, (v) => _then(v as SignOutRequested));

  @override
  SignOutRequested get _value => super._value as SignOutRequested;
}

/// @nodoc

class _$SignOutRequested extends SignOutRequested with DiagnosticableTreeMixin {
  _$SignOutRequested() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signOutRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.signOutRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested extends AuthEvent {
  factory SignOutRequested() = _$SignOutRequested;
  SignOutRequested._() : super._();
}

/// @nodoc
abstract class $SignUpRequestedCopyWith<$Res> {
  factory $SignUpRequestedCopyWith(
          SignUpRequested value, $Res Function(SignUpRequested) then) =
      _$SignUpRequestedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignUpRequestedCopyWith<$Res> {
  _$SignUpRequestedCopyWithImpl(
      SignUpRequested _value, $Res Function(SignUpRequested) _then)
      : super(_value, (v) => _then(v as SignUpRequested));

  @override
  SignUpRequested get _value => super._value as SignUpRequested;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SignUpRequested(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequested extends SignUpRequested with DiagnosticableTreeMixin {
  _$SignUpRequested(this.email, this.password) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signUpRequested(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signUpRequested'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRequested &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $SignUpRequestedCopyWith<SignUpRequested> get copyWith =>
      _$SignUpRequestedCopyWithImpl<SignUpRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmationEmailRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function() signOutRequested,
    required TResult Function(String email, String password) signUpRequested,
  }) {
    return signUpRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
  }) {
    return signUpRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmationEmailRequested,
    TResult Function()? googleSignInRequested,
    TResult Function(String email)? passwordResetRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function()? signOutRequested,
    TResult Function(String email, String password)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationEmailRequested value)
        confirmationEmailRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(PasswordResetRequested value)
        passwordResetRequested,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationEmailRequested value)?
        confirmationEmailRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested extends AuthEvent {
  factory SignUpRequested(String email, String password) = _$SignUpRequested;
  SignUpRequested._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $SignUpRequestedCopyWith<SignUpRequested> get copyWith =>
      throw _privateConstructorUsedError;
}
