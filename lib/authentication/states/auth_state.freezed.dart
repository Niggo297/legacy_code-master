// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthenticationLoading loading() {
    return AuthenticationLoading();
  }

  UnverifiedAuthentication unverified(User user) {
    return UnverifiedAuthentication(
      user,
    );
  }

  Authenticated authenticated(User user) {
    return Authenticated(
      user,
    );
  }

  UnAuthenticated unauthenticated() {
    return UnAuthenticated();
  }

  AuthError authError(String error) {
    return AuthError(
      error,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthenticationLoadingCopyWith<$Res> {
  factory $AuthenticationLoadingCopyWith(AuthenticationLoading value,
          $Res Function(AuthenticationLoading) then) =
      _$AuthenticationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticationLoadingCopyWith<$Res> {
  _$AuthenticationLoadingCopyWithImpl(
      AuthenticationLoading _value, $Res Function(AuthenticationLoading) _then)
      : super(_value, (v) => _then(v as AuthenticationLoading));

  @override
  AuthenticationLoading get _value => super._value as AuthenticationLoading;
}

/// @nodoc

class _$AuthenticationLoading extends AuthenticationLoading
    with DiagnosticableTreeMixin {
  _$AuthenticationLoading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLoading extends AuthState {
  factory AuthenticationLoading() = _$AuthenticationLoading;
  AuthenticationLoading._() : super._();
}

/// @nodoc
abstract class $UnverifiedAuthenticationCopyWith<$Res> {
  factory $UnverifiedAuthenticationCopyWith(UnverifiedAuthentication value,
          $Res Function(UnverifiedAuthentication) then) =
      _$UnverifiedAuthenticationCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UnverifiedAuthenticationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $UnverifiedAuthenticationCopyWith<$Res> {
  _$UnverifiedAuthenticationCopyWithImpl(UnverifiedAuthentication _value,
      $Res Function(UnverifiedAuthentication) _then)
      : super(_value, (v) => _then(v as UnverifiedAuthentication));

  @override
  UnverifiedAuthentication get _value =>
      super._value as UnverifiedAuthentication;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UnverifiedAuthentication(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UnverifiedAuthentication extends UnverifiedAuthentication
    with DiagnosticableTreeMixin {
  _$UnverifiedAuthentication(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unverified(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.unverified'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnverifiedAuthentication &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UnverifiedAuthenticationCopyWith<UnverifiedAuthentication> get copyWith =>
      _$UnverifiedAuthenticationCopyWithImpl<UnverifiedAuthentication>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) {
    return unverified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) {
    return unverified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class UnverifiedAuthentication extends AuthState {
  factory UnverifiedAuthentication(User user) = _$UnverifiedAuthentication;
  UnverifiedAuthentication._() : super._();

  User get user;
  @JsonKey(ignore: true)
  $UnverifiedAuthenticationCopyWith<UnverifiedAuthentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Authenticated(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Authenticated extends Authenticated with DiagnosticableTreeMixin {
  _$Authenticated(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated extends AuthState {
  factory Authenticated(User user) = _$Authenticated;
  Authenticated._() : super._();

  User get user;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated extends UnAuthenticated with DiagnosticableTreeMixin {
  _$UnAuthenticated() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated extends AuthState {
  factory UnAuthenticated() = _$UnAuthenticated;
  UnAuthenticated._() : super._();
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(AuthError _value, $Res Function(AuthError) _then)
      : super(_value, (v) => _then(v as AuthError));

  @override
  AuthError get _value => super._value as AuthError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthError extends AuthError with DiagnosticableTreeMixin {
  _$AuthError(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) unverified,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? unverified,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnverifiedAuthentication value) unverified,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnverifiedAuthentication value)? unverified,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError extends AuthState {
  factory AuthError(String error) = _$AuthError;
  AuthError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  $AuthErrorCopyWith<AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
