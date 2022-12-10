import 'dart:io';
import 'dart:math';

void main() {
  int RandomNumber = Random().nextInt(100);
  print("Randon Number $RandomNumber");
  print("Enter two digit number");
  int? userNumber = int.parse(stdin.readLineSync()!);
  int twodigit1 = userNumber ~/ 10; // 12= 1
  int twodigit2 = userNumber % 10; // 12= 2

  int Random1 = RandomNumber ~/ 10; //10 =1
  int Random2 = RandomNumber % 10; // 10 =0

  print("Random Number ${RandomNumber}");
  print("User Number ${userNumber}");

  if (userNumber == RandomNumber) {
    print("You won \$10000");
  } else if (Random1 == twodigit2 && Random2 == twodigit1) {
    print("You won \$3000");
  } else if (twodigit1 == Random1 ||
      twodigit2 == Random2 ||
      twodigit2 == Random1 ||
      twodigit1 == Random2) {
    print("You won \$1000");
  } else {
    print("Better Luck Next Time");
  }
}
