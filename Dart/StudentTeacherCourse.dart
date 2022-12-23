import 'dart:io';
class Student {
  String? studentName;
  List? courses = [];

  Student({this.studentName, this.courses});
}

class Course {
  late String nameOfCourse;
  Course(String courseName) {
    this.nameOfCourse = courseName;
  }
}

class Faculty {
  late String facultyName;
  late Course course;
  Faculty(String facultyName) {
    this.facultyName = facultyName;
  }
}

void main() {
  List<Student> students = [];
  List<Faculty> teachers = [];
  List<Course> courses = [];
  int userInput = mainMenu();
  while (userInput != 0) {
    switch (userInput) {
      case 1:
        addCourse(courses);
        userInput = mainMenu();
        break;
      case 2:
        addTeacher(teachers, courses);
        userInput = mainMenu();
        break;
      case 3:
        addStudent(students, courses);
        userInput = mainMenu();
        break;
      case 4:
        printAllDetails(
            courses: courses, students: students, teachers: teachers);
        userInput = mainMenu();
        break;
    }
  }
}

void addCourse(List courses) {
  String courseName = "hello";
  String message = 'Add Course';
  int userInput = -1;
  while (courseName != "") {
    print(message);
    message = "An Other Course";
    courseName = stdin.readLineSync()!;
    Course newCourse = Course(courseName);
    if (courseName != "") {
      courses.add(newCourse);
    }
  }
}

void addTeacher(List teachers, List courses) {
  String teacherName = "hello";
  String message = 'Add Teacher';
  int userInput = -1;
  if (courses.length > 0) {
    while (teacherName != "") {
      print("Enter Teacher Name");
      teacherName = stdin.readLineSync()!;
      if (teacherName != "") {
        Faculty newFaculty = Faculty(teacherName);

        for (int i = 0; i < courses.length; i++) {
          Course course = courses[i];
          print("${i + 1} ${course.nameOfCourse}");
        }
        print("Select Only One Subject for $teacherName");
        int courseIndex = int.parse(stdin.readLineSync()!);
        if (courseIndex > 0 && courseIndex <= courses.length) {
          Course course = courses[courseIndex - 1];
          newFaculty.course = course;
        }
        teachers.add(newFaculty);
      } else {
        userInput = mainMenu();
      }
    }
  } else {
    print("No Course to Assign to any Teacher");
  }
}

void addStudent(List students, List coursess) {
  String studentName = "hello";
  String message = 'Add Student';
  while (studentName != "") {
    print(message);
    message = "An Other Student";
    studentName = stdin.readLineSync()!;
    if (studentName != "") {
      Student newStudent = Student(studentName: studentName);
      newStudent.courses = [];
      if (coursess.length > 0) {
        int courseIndex = -1;
        while (courseIndex != 0) {
          for (int i = 0; i < coursess.length; i++) {
            Course course = coursess[i];
            print("${i + 1} ${course.nameOfCourse}");
          }
          print("0 Exit");
          print("Select Course for $studentName");
          courseIndex = int.parse(stdin.readLineSync()!);
          if (courseIndex != 0) {
            Course course = coursess[(courseIndex - 1)];
            newStudent.courses!.add(course);
            students.add(newStudent);
          }
        }
      } else {
        print("No Courses to assign Mr/Miss $studentName");
      }
    }
  }
}

void printAllDetails(
    {required List<Course> courses,
    required List<Faculty> teachers,
    required List<Student> students}) {
  if (students.length > 0) {
    for (int i = 0; i < students.length; i++) {
      Student student = students[i];
      Course course = Course("");
      Faculty subjectTeacher = Faculty(""); 
      if(student.courses != null){
        if(student.courses!.length > 0){
            for(int j = 0; j<student.courses!.length; j++){
              course = student.courses![j];
              subjectTeacher = Faculty("");
              for(int k = 0; k<teachers.length; k++){
                if(teachers[k].course.nameOfCourse == course.nameOfCourse){
                  subjectTeacher = teachers[k];
                }
              }
            }
        }else{
          print("Student has not assigned any course");
        }
      }
      print("${student.studentName} has studies ${course.nameOfCourse} which is assigned to Mr/Miss ${subjectTeacher.facultyName}");
    }
  } else {
    print("No Student Added yet");
  }
}

int mainMenu() {
  print("***************************");
  print("        Main Menu");
  print("***************************");
  print("1 Add Courses");
  print("2 Add Teachers");
  print("3 Add Students");
  print("4 Print All Details");
  print("0 Exit");
  print("***************************");
  int userInput = int.parse(stdin.readLineSync()!);
  return userInput;
}
