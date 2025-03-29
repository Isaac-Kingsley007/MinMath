import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Color.fromRGBO(220, 245, 245, 0.5),
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
