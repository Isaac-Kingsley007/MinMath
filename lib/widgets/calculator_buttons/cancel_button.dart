import 'package:calculator_app/models/calculator_provider.dart';
import 'package:calculator_app/widgets/calculator_buttons/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      value: 'C',
      buttonColor: Theme.of(context).colorScheme.primary,
      buttontextColor: Theme.of(context).colorScheme.tertiary,
      onTap: () {
        context.read<CalculatorProvider>().clear();
      },
    );
  }
}
