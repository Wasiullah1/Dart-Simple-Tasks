import 'dart:io';
import 'dart:math';

// void main() {
//   int value1 = Random().nextInt(50);
//   int value2 = Random().nextInt(50);

//   if (value1 < value2) {
//     var temp = value1;
//     value1 = value2;
//     value2 = temp;
//   }

//   int? userAnswer = int.parse(stdin.readLineSync()!);
//   if (userAnswer == (value1 - value2)) {
//     print("Your answer is correct");
//   } else {
//     print("Your answer is wrong");
//   }
// }

void main() {
  int value1 = Random().nextInt(50);
  int value2 = Random().nextInt(50);

  if (value1 > value2) {
    value1 = value1 + value2;
    value2 = value1 - value2;
    value1 = value1 - value2;
  }

  if (value1 > value2) {
    print("what is $value1-$value2?");
    int? userInput = int.parse(stdin.readLineSync()!);
    if (userInput == value1 - value2) {
      print("your answer is right");
    } else {
      print("Your answer is wrong");
    }
  }
}
