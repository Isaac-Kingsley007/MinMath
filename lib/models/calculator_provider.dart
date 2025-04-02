import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String evaluateExpression(String expression) {
  final parser = GrammarParser();
  final ContextModel cm = ContextModel();
  final int precision = 12;
  double result;

  try {
    final Expression exp = parser.parse(expression);
    result = exp.evaluate(EvaluationType.REAL, cm);
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
    return 'Error';
  }

  String resultString = result.toString();

  return (resultString.length <= precision)
      ? resultString
      : result.toStringAsPrecision(precision);
}

class CalculatorProvider extends ChangeNotifier {
  String _expression = '';
  bool _answerCalculated = false;
  final _operators = '*/+-';

  String get expression => _expression;

  void append(String char) {
    if (_answerCalculated) {
      if (!_operators.contains(char)) {
        _expression = '';
      }
      _answerCalculated = false;
    }
    _expression += char;

    notifyListeners();
  }

  void pop() {
    _expression = _expression.substring(0, _expression.length - 1);

    notifyListeners();
  }

  void clear() {
    _expression = '';

    notifyListeners();
  }

  void calculateAnswer() {
    String ans = evaluateExpression(expression);
    _expression = ans;

    notifyListeners();

    // _expression = '';
    _answerCalculated = true;
  }
}
