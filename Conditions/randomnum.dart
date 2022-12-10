import 'dart:io';
import 'dart:math';

void main() {
  int value1 = Random().nextInt(50);
  int value2 = Random().nextInt(60);
  print("what is $value1+$value2?");
  int? userAnswer = int.parse(stdin.readLineSync()!);
  if (userAnswer == (value1 + value2)) {
    print("Your answer is correct");
  } else {
    print("Your answer is wrong");
  }
}
