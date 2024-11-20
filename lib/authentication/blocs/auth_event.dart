import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

/// The events that trigger AuthBloc to change its state.
@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  /// Event indicating the user wants to receice (another) confirmation email for his account
  factory AuthEvent.confirmationEmailRequested() = ConfirmationEmailRequested;

  /// Event indicating the user wants to log in with his Googl credentials
  factory AuthEvent.googleSignInRequested() = GoogleSignInRequested;

  /// Event indicating the user wants to reset his password
  factory AuthEvent.passwordResetRequested(String email) = PasswordResetRequested;

  /// Event indicating the user wants to sign in with his credentials
  /// - [email] The email of the user
  /// - [password] The password of the user
  factory AuthEvent.signInRequested(String email, String password) = SignInRequested;

  /// Event indicating the user wants to sign off from his account
  factory AuthEvent.signOutRequested() = SignOutRequested;

  /// Event indicating the user wants to sign up with his credentials
  /// - [email] The email of the user
  /// - [password] The password of the user
  factory AuthEvent.signUpRequested(String email, String password) = SignUpRequested;
}
