import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color.fromRGBO(220, 245, 245, 0.5),
    secondary: Colors.green,
    tertiary: Colors.red,
    inversePrimary: Colors.black,
  ),
);

ThemeData darkThemeData = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Colors.black,
    secondary: Colors.green,
    tertiary: Colors.red,
    inversePrimary: Colors.white,
  ),
);
