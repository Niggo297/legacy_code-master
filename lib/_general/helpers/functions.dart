import 'package:flutter/material.dart';

/// Library for static cdemy general purpose functions. They are just grouped
/// in this class to avoid namespace dilution.
abstract class F {
  /// Count how many times String [needle] appears in String [haystack].
  /// - [needle] The String to search for.
  /// - [haystack] The String to search in.
  /// - Returns the number of times [needle] appears in [haystack].
  static int countOccurenciesOfStringInString(String haystack, String needle) {
    var count = 0;
    var index = 0;
    while ((index = haystack.indexOf(needle, index)) != -1) {
      index += needle.length;
      count++;
    }
    return count;
  }

  /// Checks whether an email address is possible / valid. The email gets checked
  /// against a pattern that is quite strict. It is modeled after RFC 5322.
  /// - [email] : The email address to check.
  /// - Returns true if the email address is valid, false otherwise.
  static bool getEmailAddressIsValid(String email) {
    final regex = RegExp(
        r'^(?:[a-z0-9!#$%&*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$');
    final patternMatch = regex.hasMatch(email);
    if (!patternMatch) {
      return false;
    }
    return true;
  }

  /// Show a snackbar with a message.
  /// - [text] : The message to show.
  /// - [context] : The context to show the snackbar in.
  /// - [backgroundColor] : The background color of the snackbar.
  /// - [textColor] : The text color of the snackbar.
  /// - [key] : The key of the snackbar.
  static void showCustomSnackbar(
    String text, {
    required final BuildContext context,
    Color? backgroundColor,
    Color? textColor,
    Key? key,
  }) {
    final snackBar = SnackBar(
      key: key,
      content: Text(text, style: TextStyle(color: textColor)),
      padding: const EdgeInsets.all(10),
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// Method to add an element to respectively remove it from a set of elements.
  /// - [set] : The set to add or remove the element from.
  /// - [v] : The element to add or remove.
  /// - Returns the modified set.
  ///
  /// ```dart
  /// final set = <int>{2, 5, 7, 9};
  /// final newSet1 = set.toggleSetValue(7): // {2, 5, 9}
  /// final newSet2 = set.toggleSetValue(7): // {2, 5, 7, 9}
  /// final newSet3 = set.toggleSetValue(1); // {1, 2, 5, 7, 9}
  /// ```
  static Set<T> toggleSetValue<T>(Set<T> set, T v) {
    if (set.contains(v)) {
      set.remove(v);
    } else {
      set.add(v);
    }
    return set;
  }
}
