import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(100);

  print("Random Number ${randomNumber}");
  print("Guess the number");
  int input = int.parse(stdin.readLineSync()!);

  while (input != randomNumber) {
    if (input > randomNumber) {
      print("Number is bigger");
    } else if (input < randomNumber) {
      print("User value is lower");
    }
    input = int.parse(stdin.readLineSync()!);
  }
  print("You got it");
}
