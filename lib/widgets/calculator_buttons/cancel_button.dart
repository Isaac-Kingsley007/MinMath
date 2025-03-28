import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        ' C ',
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
      ),
    );
  }
}
