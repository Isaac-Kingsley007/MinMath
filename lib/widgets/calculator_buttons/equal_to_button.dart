import 'package:flutter/material.dart';

class EqualToButton extends StatelessWidget {
  const EqualToButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Text(
        ' = ',
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
