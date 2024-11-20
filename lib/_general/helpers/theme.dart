import 'package:flutter/material.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';

/// Primary theme for our app.
/// For now, we only use it for testing some settings and experimenting.
/// In the long run, we will replace this wis a couple of themes the user can
/// select from.
final themeData = ThemeData(
  primarySwatch: Colors.blue,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color.fromARGB(255, 134, 189, 241),
    // fillColor: Color.fromRGBO(210, 222, 239, 1), // kann woanders verwendet werden
    filled: true,
    labelStyle: TextStyle(color: Colors.white),
  ),
  primaryColor: layColorPrimary,
  canvasColor: layColorPrimary,
  scaffoldBackgroundColor: Colors.white,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.yellow,
    selectionColor: Colors.blue.shade200,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        const Color.fromRGBO(91, 155, 213, 1),
      ),
      foregroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
    ),
  ),
  textTheme: const TextTheme(),
);
