import 'dart:io';
import 'dart:math';

class Account{
	int? accountNumber;
	double balance = 0.0;
	String? accountHolderName;

	void deposit(double newBalance){
		this.balance += newBalance;
	}
	
	void withDraw(double newBalance){
    if(this.balance >= newBalance){
	    this.balance -= newBalance;
    }else if(this.balance == 0.0){
      print("you are bankrupt");
    }else{
      print("Your amount excceed your current account balance");
    }
	
	}

	void generateAccountNumber(){
		String number = "";
		for(int i = 0 ; i<6 ; i++){
			int num = Random().nextInt(9);
			number +=  num.toString();
		}
		this.accountNumber = int.parse(number); 
	}

  void debit(){
    print("Please Amount:");
    double amount = double.parse(stdin.readLineSync()!);
    withDraw(amount);
  }

  void credit(){
    print("Please Amount:");
    double amount = double.parse(stdin.readLineSync()!);
    deposit(amount);
  }
  
	
}
void main(){
  print("Enter Account Holder Name");
  Account account1 = Account();
  account1.accountHolderName = stdin.readLineSync()!;
  account1.generateAccountNumber();
  print("your account information");
  print("Account number ${account1.accountNumber}");
  int option = -1;
  while(option != 0){
    print("1 Debit");
    print("2 Credit");
    print("0 Exit");
    option = int.parse(stdin.readLineSync()!);
    if(option == 1){
      account1.debit();
      print("You Current balance is ${account1.balance}");
    }else if(option == 2){
       account1.credit();
      print("You Current balance is ${account1.balance}");
    }
  }
}