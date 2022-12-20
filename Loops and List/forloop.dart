import 'dart:io';

void main() {
  //Hello
  print("Please enter number");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= number; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");
    }
    print(".............................");
  }
  int counter = 1;
  while (counter <= number) {
    int num = 1;
    while (num <= 10) {
      print("${counter} * $num = ${counter * num}");
      num++;
    }
    counter++;
  }
}
