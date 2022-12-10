import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Your Names");
  List myList = [];
  String? names = stdin.readLineSync();
  myList.add(names);
  String empty = "";

  while (names != empty) {
    names = stdin.readLineSync();
    myList.add(names);
  }

  print(myList);

  int randomNumber = Random().nextInt(myList.length - 1);
  print("Randum number $randomNumber");

  print("Guess the correct name to win");
  String? name = stdin.readLineSync();

  while (myList.indexOf(name) != randomNumber) {
    print("Try again and guess the correct name ");
    name = stdin.readLineSync();
  }
  print("You answer is correct");
}
