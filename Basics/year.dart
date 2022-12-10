import 'dart:io';

void main() {
  print("Enter total number of minutes");
  int? minut = int.parse(stdin.readLineSync()!);

// a year contains 525600 minuts
  print("You have entered $minut minutes");
  int years = minut ~/ 525600;

// remaining minuts
  minut = minut % 525600;
  int days = minut ~/ 1440;
  print("Total years are $years and days are $days");
}
