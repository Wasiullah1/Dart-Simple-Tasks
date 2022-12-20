import 'dart:io';
import 'dart:math';
class Student {
  String? name;
  String? email;
  int? age;

  Student(){

  }
  Student.withoutEmail({required String name,required int age}){
    this.name = name;
    this.age = age;
  }
  

  // Student({required String name, String? email,required int age}){
  //   this.name = name;
  //   this.email = email;
  //   this.age = age;
  // }
  // Student({List? data}){
  //   this.name = data![0];
  //   this.email = data[1];
  //   this.age = data[2];
  // }

}
void main() {
  List ListOfStudent = [];
  // Name Email Age
  while(true){
  print("Name Email Age");
  String userInfo = stdin.readLineSync()!;
  if(userInfo == ''){
    break;
  }
  List data = userInfo.split(' ');
  String name = data[0];
  String email = data[1];
  int age = int.parse(data[2]);

  Student st1 = Student();
  Student st2 = Student.withoutEmail(name: "Faraz",age: 34);
  
  ListOfStudent.add(st1);
  }
  printList(ListOfStudent);
  
}
void printList(List StudentList){
  for(int i = 0; i<StudentList.length; i++){
    Student std = StudentList[i];
    print("Student ${i+1}");
    print("Name ${std.name}");
    print("Email ${std.email}");
    print("age ${std.age}");
  }
}
