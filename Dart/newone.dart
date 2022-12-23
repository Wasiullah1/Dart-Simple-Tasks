import 'dart:io';

class Calculator {
  String functionName = "";
  late Function myFunction = () {};
  void Add(int value1, int value2) {
    print(value1 + value2);
  }

  void Sub(int value1, int value2) {
    print(value1 - value2);
  }

  void Multiply(int value1, int value2) {
    print(value1 * value2);
  }

  void Divide(int value1, int value2) {
    print(value1 / value2);
  }

  void calculate(int value1, int value2, Function myFunction) {
    myFunction(value1, value2);
  }
}

void main() {
  print("Enter value 1");
  int value1 = int.parse(stdin.readLineSync()!);
  print("Enter value 2");
  int value2 = int.parse(stdin.readLineSync()!);
  print("Please Write Add for addition");
  print("please Write Sub for Subtraction");
  print("please Write Multiply for multiplication");
  print("please Write Divide for Division");

  Calculator clac = Calculator();
  String functionName = stdin.readLineSync()!;
  clac.calculate(value1, value2, clac.myFunction);
}
