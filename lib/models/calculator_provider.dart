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

  if (result == result.toInt()) return result.toInt().toString();

  return (resultString.length <= precision)
      ? resultString
      : result.toStringAsPrecision(precision);
}

class CalculatorProvider extends ChangeNotifier {
  String _expression = '';
  bool _answerCalculated = false;
  final _operators = '*/+-()%';
  int _paranthesisBalancer = 0;

  String get expression => _expression;

  void append(String char) {
    if (_answerCalculated) {
      if (!_operators.contains(char)) {
        _expression = '';
      }
      _answerCalculated = false;
    }

    if (_operators.contains(char) &&
        (_expression == '' ||
            _operators.contains(_expression[_expression.length - 1]))) {
      return;
    }
    _expression += char;

    notifyListeners();
  }

  void pop() {
    if (_expression == 'Error') {
      clear();
      return;
    }
    _expression = _expression.substring(0, _expression.length - 1);

    notifyListeners();
  }

  void appendParanthesis() {
    if (_expression.isEmpty ||
        _operators.contains(_expression[_expression.length - 1]) ||
        _paranthesisBalancer == 0) {
      append('(');
      _paranthesisBalancer++;
    } else {
      append(')');
      _paranthesisBalancer--;
    }
  }

  void clear() {
    _expression = '';

    notifyListeners();
  }

  void calculateAnswer() {
    String ans = evaluateExpression(expression);
    _expression = ans;

    notifyListeners();

    _answerCalculated = true;
  }
}
