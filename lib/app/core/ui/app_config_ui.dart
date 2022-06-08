import 'package:flutter/material.dart';

class AppConfigUi {
  AppConfigUi._();

  static const MaterialColor _primarySwatch = MaterialColor(0XFF459651, {
    50: Color(0XFF3e8749),
    100: Color(0XFF377841),
    200: Color(0XFF306939),
    300: Color(0XFF295a31),
    400: Color(0XFF234b29),
    500: Color(0XFF1c3c20),
    600: Color(0XFF152d18),
    700: Color(0XFF0e1e10),
    800: Color(0XFF070f08),
    900: Color(0XFF000000)
  });

  static final ThemeData theme = ThemeData(
      primarySwatch: _primarySwatch,
      primaryColor: const Color(0XFF459651),
      primaryColorLight: const Color(0XFF2F8F9D),
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          labelStyle: TextStyle(color: Colors.black)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))));
}
