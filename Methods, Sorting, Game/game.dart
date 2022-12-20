import 'dart:ffi';
import 'dart:math';
import 'dart:io';

void main() {
  List words = ["apple", "orange", "banana", "pineapple"];
  int randomNumber = Random().nextInt(words.length);
  List dummyWords = [];
  List accualWord = [];
  for (int i = 0; i < words[randomNumber].length; i++) {
    dummyWords.add('*');
    accualWord.add(words[randomNumber][i]);
  }
  
  print(dummyWords);
  while(!checkEqual(dummyWords,accualWord)) {
    print("Guess the word by character..!");
    String ch = stdin.readLineSync()!;
    for (int i = 0; i < dummyWords.length; i++) {
      if (ch == accualWord[i]) {
        dummyWords[i] = accualWord[i];
      }
    }
    print(dummyWords);
  }
  print("You Got it..!!");
}

bool checkEqual(List a , List b){
  bool isEqaul = true;
  for(int i = 0 ; i<a.length ; i++){
    if(a[i] != b[i]){
      isEqaul = false;
    }
  }
  return isEqaul;
}
