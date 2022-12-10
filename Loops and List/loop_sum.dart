import 'dart:io';

void main() {
  int counter = 0;
  print("Enter any number");
  int? val;
  while (val != 0) {
    val = int.parse(stdin.readLineSync()!);
    counter = val - counter;
  }
  print("Subtraction: $counter");
}
