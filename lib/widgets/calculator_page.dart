import 'package:calculator_app/widgets/function_buttons_box.dart';
import 'package:calculator_app/widgets/number_box.dart';
import 'package:calculator_app/widgets/number_pad.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        height: height,
        width: (height > width) ? width : height * 0.5,
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [NumberPad(), FunctionButtonsBox(), NumberBox()],
          ),
        ),
      ),
    );
  }
}
