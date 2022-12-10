import 'dart:io';

void main() {
  print("Enter first number");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int? num2 = int.parse(stdin.readLineSync()!);
  print("Enter third number");
  int? num3 = int.parse(stdin.readLineSync()!);

  print('number 1: ${num1}');
  print('number 2: ${num2}');
  print('number 3: ${num3}');

  num1 > num2 && num1 >= num3
      ? print("${num1} is larget number")
      : num2 > num1 && num2 >= num3
          ? print("${num2} is larget number")
          : num3 > num1 && num3 >= num2
              ? print("${num3} is larget number")
              : print("All Or two numbers are equal");
}
