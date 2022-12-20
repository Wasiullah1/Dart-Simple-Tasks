import 'dart:math';
import 'dart:io';

void main(){

  List fruits = ["apple",'banana','orange','pineapple'];
  int randomNumber = Random().nextInt(fruits.length);
  String fruit = fruits[randomNumber];
  List dummyWord = [];
  List acctualWord = [];
  for(int i = 0 ; i< fruit.length; i++){
    dummyWord.add('*');
    acctualWord.add(fruit[i]);
  }
  print(dummyWord);
  while(!checkList(dummyWord, acctualWord)){
    print("Guess the word by giving characters");
    String ch = stdin.readLineSync()!;  
    for(int i = 0 ; i < acctualWord.length ; i++){
      if(ch == acctualWord[i]){
        dummyWord[i] = acctualWord[i];
      }
    }
    print(dummyWord);
  }

}

bool checkList(List a , List b){
  bool iseqaul = true;
  if(a.length == b.length){
    for(int i=0 ; i<a.length ; i++){
      if(a[i] != b[i]){
        iseqaul = false;
      }
    }
  }else{
    print("Both have different Length");
  }
  return iseqaul;
}