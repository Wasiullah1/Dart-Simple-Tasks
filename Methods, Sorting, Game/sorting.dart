void main() {
  List myNumbers = [20, 30,4, 1,3, 10, 20];

  print(myNumbers);
  int counter = 1;
  for (int j = 0; j < myNumbers.length; j++) {
    int length = myNumbers.length - counter;
    for (int i = 0; i < length -1 ; i++) {
      if (myNumbers[i] > myNumbers[i + 1]) {
        int num = myNumbers[i];
        myNumbers[i] = myNumbers[i + 1];
        myNumbers[i + 1] = num;
      }
      print(myNumbers);
    }
    counter++;
  }
  print(myNumbers);
}
