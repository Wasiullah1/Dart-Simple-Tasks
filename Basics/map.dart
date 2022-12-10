import 'dart:io';

void main() {
  print("Enter Username \n");
  String? name = stdin.readLineSync();

  print("Enter lastName\n");
  String? lstName = stdin.readLineSync();

  print("Enter age\n");
  int? age = int.parse(stdin.readLineSync()!);

  print("Enter phonenummber\n");
  int? phone = int.parse(stdin.readLineSync()!);

  Map newMap = {
    "Name": name,
    "lastName": lstName,
    "age": age,
    "phoneNumber": phone
  };
  print(newMap);
}
