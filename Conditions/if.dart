import 'dart:io';

void main() {
  print("enter English subject marks");
  double? sub1 = double.parse(stdin.readLineSync()!);

  print("enter Maths subject marks");
  double? sub2 = double.parse(stdin.readLineSync()!);

  print("enter Sindhi subject marks");
  double? sub3 = double.parse(stdin.readLineSync()!);

  print("enter Grammer subject marks");
  double? sub4 = double.parse(stdin.readLineSync()!);

  print("enter Urdu subject marks");
  double? sub5 = double.parse(stdin.readLineSync()!);

  double percent = (sub1 + sub2 + sub3 + sub4 + sub5) * 100 / 500;
  print("Total Marks= ${sub1 + sub2 + sub3 + sub4 + sub5}");
  print("Percentage= $percent");

  if (percent >= 60) {
    print("pass");
  } else {
    print("fail");
  }
}
