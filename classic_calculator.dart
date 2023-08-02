import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Pick the Operation: ");
  stdout.writeln("+, -, *, /");
  stdout.writeln();

  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      stdout.write(num1 + num2);
      break;
    case '-':
      stdout.write(num1 - num2);
      break;
    case '*':
      stdout.write(num1 * num2);
      break;
    case '/':
      stdout.write(num1 / num2);
      break;
    default:
      stdout.write("Invalid Operation");
      break;
  }
}
