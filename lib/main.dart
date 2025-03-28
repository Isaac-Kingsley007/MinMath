import "package:calculator_app/home_page.dart";
import "package:calculator_app/models/theme_data.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: HomePage(),
    );
  }
}
