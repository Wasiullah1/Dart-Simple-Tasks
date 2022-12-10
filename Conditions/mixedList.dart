import 'dart:io';

void main() {
  print('Enter User-1 Name:');
  var user = stdin.readLineSync();

  print("Enter User-1 age");
  var age = stdin.readLineSync();

  print("Enter User-1 Email");
  var mail = stdin.readLineSync();

  print('Enter User-2 Name:');
  var user2 = stdin.readLineSync();

  print("Enter User-2 age");
  var age2 = stdin.readLineSync();

  print("Enter User-2 Email");
  var mail2 = stdin.readLineSync();

  print('Enter User-3 Name:');
  var user3 = stdin.readLineSync();

  print("Enter User-3 age");
  var age3 = stdin.readLineSync();

  print("Enter User-3 Email");
  var mail3 = stdin.readLineSync();

  List newList = [
    {
      "user1": [user, age, mail],
      "user2": [user2, age2, mail2],
      "user3": [user3, age3, mail3]
    }
  ];

  print(newList);
}
