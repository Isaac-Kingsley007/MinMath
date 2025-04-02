import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String value;
  final Color buttonColor;
  final Color buttontextColor;
  final Function onTap;

  const CalculatorButton({
    super.key,
    required this.value,
    required this.buttonColor,
    required this.buttontextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: buttonColor.withAlpha(255),
        onTap: () {
          onTap();
        },
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: buttonColor),
          child: Center(
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(color: buttontextColor, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
