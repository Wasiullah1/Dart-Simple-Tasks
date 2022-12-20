import 'dart:io';

void main() {
  String set1 =
      " 1  3  5  7\n" + " 9 11 13 15\n" + "17 19 21 23\n" + "25 27 29 31";

  String set2 =
      " 2  3  6  7\n" + "10 11 14 15\n" + "18 19 22 23\n" + "26 27 30 31";

  String set3 =
      " 4  5  6  7\n" + "12 13 14 15\n" + "20 21 22 23\n" + "28 29 30 31";

  String set4 =
      " 8  9 10 11\n" + "12 13 14 15\n" + "24 25 26 27\n" + "28 29 30 31";

  String set5 =
      "16 17 18 19\n" + "20 21 22 23\n" + "24 25 26 27\n" + "28 29 30 31";

  int day = 0;

  print("Is your birthday in set1?\n");
  print(set1);
  print("\nEnter 0 for No and 1 for Yes: ");
  int answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) day += 1;

  print("Is your birthday in set1?\n");
  print(set2);
  print("\nEnter 0 for No and 1 for Yes: ");
  answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) day += 2;

  print("Is your birthday in set1?\n");
  print(set3);
  print("\nEnter 0 for No and 1 for Yes: ");
  answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) day += 4;

  print("Is your birthday in set1?\n");
  print(set4);
  print("\nEnter 0 for No and 1 for Yes: ");
  answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) day += 8;

  print("Is your birthday in set1?\n");
  print(set5);
  print("\nEnter 0 for No and 1 for Yes: ");
  answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) day += 16;

  print("your birthday is $day");
}
