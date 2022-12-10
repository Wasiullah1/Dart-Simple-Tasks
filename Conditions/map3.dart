import 'dart:io';

void main() {
  print("Enter Name of Students:");
  print("Enter std1 name");
  var std1 = stdin.readLineSync();

  print("Enter std2 name");
  var std2 = stdin.readLineSync();

  print("Enter std3 name");
  var std3 = stdin.readLineSync();

  print("Enter std4 name");
  var std4 = stdin.readLineSync();

  print("Enter std5 name");
  var std5 = stdin.readLineSync();

//teachers
  print("Enter Name of Teachers");
  print("Enter 1st name");
  var firstName = stdin.readLineSync();

  print("Enter 2nd name");
  var secName = stdin.readLineSync();

  print("Enter 3rd name");
  var thirName = stdin.readLineSync();

  print("Enter 4th name");
  var fourName = stdin.readLineSync();

  print("Enter 5th name");
  var fifName = stdin.readLineSync();

  Map NewMap = {
    "Teachers": [firstName, secName, thirName, fourName, fifName],
    "Students": [std1, std2, std3, std4, std5]
  };
  print("Enter names which you want Teahers/Students");
  var name = stdin.readLineSync();

  print(NewMap[name]);
}
