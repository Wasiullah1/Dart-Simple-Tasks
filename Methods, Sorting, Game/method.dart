import 'dart:io';

void main(){
  print("Enter Password");
  String password = stdin.readLineSync()!;
  bool isNumber = false;
  bool isCapitalLetter = false;
  bool isLength8 = false;
  for(int i = 0 ; i < password.length; i++){
    if(password.length >= 8){
      isLength8 = true;
    }
    if(password[i].codeUnits[0] >= 48 && password[i].codeUnits[0] <= 58 ){
      isNumber = true;
    }else if(password[i].codeUnits[0] >= 65 && password[i].codeUnits[0] <= 90){
      isCapitalLetter = true;
    }
 }
  if(isCapitalLetter && isLength8 && isNumber){
    print("Password valid");
  }else{
    print("Invalid Password");
  }
}