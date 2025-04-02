import "package:calculator_app/home_page.dart";
import "package:calculator_app/models/calculator_provider.dart";
import "package:calculator_app/models/theme_data.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculatorProvider()),
      ],
      child: const CalculatorApp(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
