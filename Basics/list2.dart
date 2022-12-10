void main() {
  List numbers = [];
  numbers.add(1);
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(5);
  numbers.add(8);
  numbers.add(13);
  numbers.add(21);
  numbers.add(34);
  numbers.add(55);
  numbers.add(89);
  print("List before summation $numbers");
  // adding the list integers
  int add = numbers[0] +
      numbers[1] +
      numbers[2] +
      numbers[3] +
      numbers[4] +
      numbers[5] +
      numbers[6] +
      numbers[7] +
      numbers[8] +
      numbers[9] +
      numbers[10];
  print(numbers.length);//11
  print("List after Sumation $add");
}
