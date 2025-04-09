import 'package:calculator_app/models/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FunctionButtonsBox extends StatelessWidget {
  const FunctionButtonsBox({super.key});
  final iconSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.history),
                iconSize: iconSize,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.scale_outlined),
                iconSize: iconSize,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.calculate_outlined),
                iconSize: iconSize,
              ),
            ],
          ),
          IconButton(
            onPressed: () => context.read<CalculatorProvider>().pop(),
            icon: Icon(Icons.backspace_outlined),
            iconSize: iconSize,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
