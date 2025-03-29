import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String value;
  final Color buttonColor;
  final Color buttontextColor;
  const CalculatorButton({
    super.key,
    required this.value,
    required this.buttonColor,
    required this.buttontextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: buttonColor),
      child: MaterialButton(
        onPressed: () {},
        child: Center(
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(color: buttontextColor, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
