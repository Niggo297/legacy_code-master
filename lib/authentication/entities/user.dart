import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Representation of one individual user of this app.
@freezed
class User with _$User {
  /// An empty user
  static final empty = const User();

  /// Creates a new user which is a representation of a user of this app.
  const factory User({
    String? uid,
    String? email,
    String? name,
    String? photoUrl,
  }) = _User;

  /// Creates a new user from a JSON data object.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Creates an unverified (but signed in) user of this app
  factory User.unverified({
    String? uid,
    String? email,
    String? name,
    String? photoUrl,
  }) = UnverifiedUser;

  const User._();

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;
}
