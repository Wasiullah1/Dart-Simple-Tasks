import 'dart:io';
import 'dart:math';

void main() {
  print("Enter five numbers");
  print("Enter first number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter third number");
  int num3 = int.parse(stdin.readLineSync()!);
  print("Enter fourth number");
  int num4 = int.parse(stdin.readLineSync()!);
  print("Enter fifth number");
  int num5 = int.parse(stdin.readLineSync()!);

  print("User inputs are ${num1}, ${num2}, ${num3}, ${num4}, ${num5}");

  print("Maximum number is: ");
  print(max(max(num1, num2), max(num3, max(num4, num5))));

  print("Minimum number is: ");
  print(min(min(num1, num2), min(num3, min(num4, num5))));
}
