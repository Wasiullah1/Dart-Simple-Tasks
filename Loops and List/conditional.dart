import 'dart:io';

void main() {
  print("Enter yor age");
  int? age = int.parse(stdin.readLineSync()!);

  age >= 18 ? print("You're in") : print("You're under 18");
}
