import 'dart:io';
import 'dart:math';

void main() {
  var value1 = Random().nextInt(50);
  var value2 = Random().nextInt(50);
  // print("what is $value1-$value2?");
  if (value1 > value2) {
    print("what is $value1-$value2?");
    int userInput = int.parse(stdin.readLineSync()!);
    if (userInput == (value1 - value2)) {
      print("your answer is right");
    } else {
      print("Your answer is wrong");
    }
  } else {
    print("what is $value2-$value1?");
    int userInput = int.parse(stdin.readLineSync()!);
    if (userInput == (value2 - value1)) {
      print("your answer is right");
    } else {
      print("Your answer is wrong");
    }
  }
}

  // int? userAnswer = int.parse(stdin.readLineSync()!);
  // if (value1 > value2) {
  //   print("answer is correct{$value1-$value2}");
  // } else {
  //   print("your answer is wrong");
  // }

