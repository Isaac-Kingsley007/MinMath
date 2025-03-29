import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';

class EqualToButton extends StatelessWidget {
  const EqualToButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: '=',
      buttonColor: Theme.of(context).colorScheme.secondary,
      buttontextColor: Theme.of(context).colorScheme.primary,
    );
  }
}
