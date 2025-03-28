import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String value;
  const SignButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
