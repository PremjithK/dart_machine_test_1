import 'dart:io';

class Calculator {
  void add(double a, double b) {
    stdout.writeln(a + b);
  }

  void subtract(double a, double b) {
    stdout.writeln(a - b);
  }

  void multiply(double a, double b) {
    stdout.writeln(a * b);
  }

  void divide(double a, double b) {
    stdout.writeln(a / b);
  }
}

void main(List<String> args) {
  Calculator calc = Calculator();

  stdout.write("Enter the first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Pick the Operation: ");
  stdout.writeln("+, -, *, /");
  stdout.writeln();

  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      calc.add(a, b);
      break;
    case '-':
      calc.subtract(a, b);
      break;
    case '*':
      calc.multiply(a, b);
      break;
    case '/':
      calc.divide(a, b);
      break;
    default:
      stdout.write("Invalid Operation");
      break;
  }
}
