import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  const NumberPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          'Number Pad',
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
