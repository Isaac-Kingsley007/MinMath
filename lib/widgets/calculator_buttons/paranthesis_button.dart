import 'package:calculator_app/models/calculator_provider.dart';
import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ParanthesisButton extends StatelessWidget {
  const ParanthesisButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: '()',
      buttonColor: Theme.of(context).colorScheme.primary,
      buttontextColor: Theme.of(context).colorScheme.secondary,
      onTap: () {
        context.read<CalculatorProvider>().appendParanthesis();
      },
    );
  }
}
