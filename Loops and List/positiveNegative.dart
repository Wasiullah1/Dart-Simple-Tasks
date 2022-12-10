import 'dart:io';

void main() {
  print("Print any number");
  int? input = int.parse(stdin.readLineSync()!);
  int positive = input;
  int negative = input;
  int counter = input;

  while (input != 0) {
    input = int.parse(stdin.readLineSync()!);
    if (input > 0) {
      while (input >= 0) {
        positive = input;
      }
    }
    if (input < 0) {
      negative = input;
    }
    counter += input;
  }
  print("Positive number ${positive}");
}
