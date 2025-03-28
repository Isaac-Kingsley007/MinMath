import 'package:calculator_app/widgets/function_buttons_box.dart';
import 'package:calculator_app/widgets/number_box.dart';
import 'package:calculator_app/widgets/number_pad.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [NumberPad(), FunctionButtonsBox(), NumberBox()]);
  }
}
