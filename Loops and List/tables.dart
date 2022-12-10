import 'dart:io';

void main() {
  print("Enter the number for Table");
  int? input = int.parse(stdin.readLineSync()!);

  int table = 1;
  while (table <= input) {
    print("**************");
    print("Table of $table\n ");
    int multi = 0;
    while (multi <= 10) {
      print("${table} x ${multi} = ${multi * table}");
      multi++;
    }
    table++;
  }
}
