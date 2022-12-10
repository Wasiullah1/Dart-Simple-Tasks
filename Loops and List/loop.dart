import 'dart:io';
import 'dart:math';

void main() {
  int counter = 1;
  // print("What is 5 + 2");
  int randomNumber1 = Random().nextInt(100);
  int randomNumber2 = Random().nextInt(100);
  print("What is ${randomNumber1}+${randomNumber2}");
  int sum = randomNumber1 + randomNumber2;
  // print("What is 5 + 2");

  int input = int.parse(stdin.readLineSync()!);

  while (input != randomNumber1 + randomNumber2) {
    print("You're not correct, enter answer again");
    // print("What is 5 + 2");

    print("${randomNumber1}+${randomNumber2} = ?");
    int input = int.parse(stdin.readLineSync()!);
  }
  print("You're correct");
}
