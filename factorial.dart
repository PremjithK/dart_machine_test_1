//FACTORIAL
import 'dart:io';

void main(List<String> args) {
  //fact function
  int? factorial(int n) {
    int result = 1;
    if (n < 1) {
      return 1;
    } else {
      for (int i = n; i > 0; i--) {
        result = result * i;
      }
      return result;
    }
  }

  // printing factorials of numbers from 1 to 10
  for (int j = 1; j <= 10; j++) {
    stdout.writeln(factorial(j));
  }
}
