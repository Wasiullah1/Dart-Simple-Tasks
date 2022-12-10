import 'dart:io';
import 'dart:math';
// import 'dart:svg';

void main() {
  print("Head Or Tail zero or one");
  int num = int.parse(stdin.readLineSync()!);

  print(" User input is ${num}");

  int randomNumber = Random().nextInt(2);
  print(" Random number is ${randomNumber}");
  switch (num) {
    case 0:
      num == randomNumber ? print("You won") : print("You lost");
      break;
    case 1:
      num == randomNumber ? print("You won") : print("You lost");
      break;
    default:
      print("Invalid Number");
      break;
  }
}
