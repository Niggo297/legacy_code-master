import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeit_erfassung/authentication/entities/user.dart';

part 'auth_state.freezed.dart';

/// States the AuthBloc can be in.
@freezed
class AuthState with _$AuthState {
  const AuthState._();

  /// AuthBloc is still processing inputs or gathering data
  factory AuthState.loading() = AuthenticationLoading;

  /// The user is signed on but his email adress was not verified yet.
  factory AuthState.unverified(User user) = UnverifiedAuthentication;

  /// The user is fully signed in and his email adress is already verified.
  factory AuthState.authenticated(User user) = Authenticated;

  /// The user is signed off.
  factory AuthState.unauthenticated() = UnAuthenticated;

  /// AuthBloc completed its last event in an error state.
  factory AuthState.authError(String error) = AuthError;
}
