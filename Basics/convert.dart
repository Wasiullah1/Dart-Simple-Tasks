import 'dart:io';
void main(){
print("Enter pounds");
double? pounds = double.parse(stdin.readLineSync()!);
print("You have entered $pounds pounds");
double kg = pounds * 0.454;
print("Total kiloGrams are $kg");

}