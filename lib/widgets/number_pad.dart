import 'package:calculator_app/models/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberPad extends StatelessWidget {
  const NumberPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
      child: SizedBox(
        width: double.infinity,
        child: Consumer<CalculatorProvider>(
          builder:
              (context, value, child) => Text(
                value.expression,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
    );
  }
}
