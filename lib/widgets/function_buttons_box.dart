import 'package:flutter/material.dart';

class FunctionButtonsBox extends StatelessWidget {
  const FunctionButtonsBox({super.key});
  final iconSize = 30.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
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
    );
  }
}
