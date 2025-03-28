import 'package:flutter/material.dart';

class FunctionButtonsBox extends StatelessWidget {
  const FunctionButtonsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 5,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.history)),
        IconButton(onPressed: () {}, icon: Icon(Icons.scale_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.calculate_outlined)),
      ],
    );
  }
}
