import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.yellow,
    secondary: Colors.green,
    tertiary: Colors.red,
    inversePrimary: Colors.black,
  ),
);

ThemeData darkThemeData = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.black,
    secondary: Colors.green,
    tertiary: Colors.red,
    inversePrimary: Colors.white,
  ),
);
