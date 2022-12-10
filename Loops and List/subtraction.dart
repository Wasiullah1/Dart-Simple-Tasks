import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(100);
  int randomNumber2 = Random().nextInt(100);

  // print("Random Number ${randomNumber}");
  // print("What is ${randomNumber} - ${randomNumber2}");

  int temp;
  // int sub = randomNumber - randomNumber2;
  // int input = int.parse(stdin.readLineSync()!);

  print("Random number 1: ${randomNumber}");
  print("Random number 2: ${randomNumber2}");
  if (randomNumber > randomNumber2) {
    temp = randomNumber2;
    randomNumber = temp;
    randomNumber2 = randomNumber;
    print("Random number 1: ${randomNumber}");
    print("Random number 2: ${randomNumber2}");
  }

  // while (input != sub) {
  //   print(
  //       "Answer is wrong, try again\nWhat is ${randomNumber} - ${randomNumber2}");
  //   input = int.parse(stdin.readLineSync()!);
  // }
  // print("You got it");
}
