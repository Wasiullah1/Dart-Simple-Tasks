import 'dart:io';
import 'dart:math';

void main() {
  print("Enter any number");
  int value = int.parse(stdin.readLineSync()!);
  int maximum = value;
  int minimum = value;
  int counter = value;

  while (value != 0) {
    value = int.parse(stdin.readLineSync()!);
    //input
    if (value > maximum) {
      maximum = value;
    }
    if (value < minimum && value != 0) {
      minimum = value;
    }
    counter += value;
  }
  print("Sum: $counter");
  print(" Maximum number is :${maximum}");
  print(" Minimum number is :${minimum}");
}
