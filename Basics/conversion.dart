import 'dart:io';

void main() {
  print("Enter Total number of Feets");
//if we use data type other than String we have
// to cast into relevant data-type
//we have to put ! for input for other than String
// infront of stdin function
  double? feet = double.parse(stdin.readLineSync()!);

  print("you have Entered $feet feets");
  double meters = feet * 0.305;
  print("total number of meters are $meters");
}
