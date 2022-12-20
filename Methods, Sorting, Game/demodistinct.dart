import 'dart:io';

void main(){
  List distinctNumbers = [];
  print("Enter numbers 0 exit");
  int num = int.parse(stdin.readLineSync()!);
  // num = 10;
  bool isExists = false;
  while(num !=0 ){
    for(int i = 0; i < distinctNumbers.length ; i++){
      if(distinctNumbers[i] == num){
        isExists = true;
      }
    }
    if(!isExists){
      distinctNumbers.add(num);
    }
    isExists = false;
    num = int.parse(stdin.readLineSync()!);
  }
  print("distinct values = $distinctNumbers");
}