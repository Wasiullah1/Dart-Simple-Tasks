import 'dart:io';
import 'dart:math';

void main() {
  print("Enter Month ");
  int? month = int.parse(stdin.readLineSync()!);

  print("Enter Year ");
  int? year = int.parse(stdin.readLineSync()!);

  if (month == 1 ||
      month == 3 ||
      month == 5 ||
      month == 7 ||
      month == 8 ||
      month == 10) {
    print("$month month $year has 31 days");
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    print("$month month $year has 30 days ");
  } else if (month == 2 && year % 4 == 0) {
    print("$month month $year has 29 days");
  } else {
    print("$month month $year has 28 days");
  }
}
