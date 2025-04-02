import 'package:calculator_app/models/calculator_provider.dart';
import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberButton extends StatelessWidget {
  final String value;
  const NumberButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: value,
      buttonColor: Theme.of(context).colorScheme.primary,
      buttontextColor: Theme.of(context).colorScheme.inversePrimary,
      onTap: () {
        context.read<CalculatorProvider>().append(value);
      },
    );
  }
}
