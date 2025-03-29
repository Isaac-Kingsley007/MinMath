import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: 'C',
      buttonColor: Theme.of(context).colorScheme.primary,
      buttontextColor: Theme.of(context).colorScheme.tertiary,
    );
  }
}
