import 'dart:io';
import 'dart:math';

class Account{
  String? accountHolderName;
  int? accountNumber;
  int balance = 0;

  Account(){
    String randomNumber = "";
    for(int i = 0; i< 6 ; i++){
      int rand = Random().nextInt(9);
      randomNumber += rand.toString();
    }
    accountNumber = int.parse(randomNumber);
  }

  void debit(int newBalance){
    if(this.balance < newBalance){
      print("You current balance is less then enterd amount");
    }else if(this.balance == 0){
      print("you current balance is 0");
    }else{
      this.balance -= newBalance;
    }
  }
  
  void credit(int newBalance){
    this.balance += newBalance;
  }
}
void main(){
  // Enter accountHolder Name
  Account account1 = Account();
  print("Enter Account Holder Name");
  account1.accountHolderName = stdin.readLineSync()!;
  int userInput = -1;
  while(userInput != 0){
    print("1 Creadit");
    print("2 Debit");
    print("0 Exit");
    userInput = int.parse(stdin.readLineSync()!);
    if(userInput == 1){
      print("Enter Amount:");
      int newBalance = int.parse(stdin.readLineSync()!);
      account1.credit(newBalance);
    }else if(userInput == 2){
      print("Enter Amount:");
      int newBalance = int.parse(stdin.readLineSync()!);
      account1.debit(newBalance);
    }
  }
}