import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String value;
  const SignButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: value,
      buttonColor: Theme.of(context).colorScheme.primary,
      buttontextColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
