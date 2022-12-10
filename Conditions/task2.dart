import 'dart:io';

void main() {
  print("Enter year");
  int? year = int.parse(stdin.readLineSync()!);
  year = year % 4;
  if (year == 0) {
    print("Leap Year");
  } else {
    print("Not a leap year");
  }
}
