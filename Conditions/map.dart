import 'dart:io';

void main() {
  Map newMap = {
    "teachers": ["Arslan", "hashim", "Muhammad"],
    "students": ["Ahmed", "wajahat", "Aslam"]
  };

  print("Enter Key Value");
  String? key = stdin.readLineSync();

  print(newMap[key]);
}
