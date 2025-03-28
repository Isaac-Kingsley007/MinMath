import 'package:calculator_app/widgets/calculator_buttons/cancel_button.dart';
import 'package:calculator_app/widgets/calculator_buttons/equal_to_button.dart';
import 'package:calculator_app/widgets/calculator_buttons/number_button.dart';
import 'package:calculator_app/widgets/calculator_buttons/sign_button.dart';
import 'package:flutter/material.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.6,
      child: GridView.count(
        crossAxisCount: 4,
        children: <Widget>[
          CancelButton(),
          SignButton(value: '()'),
          SignButton(value: '%'),
          SignButton(value: '/'),
          NumberButton(value: '7'),
          NumberButton(value: '8'),
          NumberButton(value: '9'),
          SignButton(value: 'X'),
          NumberButton(value: '4'),
          NumberButton(value: '5'),
          NumberButton(value: '6'),
          SignButton(value: '-'),
          NumberButton(value: '1'),
          NumberButton(value: '2'),
          NumberButton(value: '3'),
          SignButton(value: '+'),
          NumberButton(value: '+/-'),
          NumberButton(value: '0'),
          NumberButton(value: '.'),
          EqualToButton(),
        ],
      ),
    );
  }
}
