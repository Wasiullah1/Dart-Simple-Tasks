class Employee {
  String? name;
  int? age;
  double? salary;
  int? cnic;
  String? hireDate;
  Department? department;

  Employee(
      {this.name,
      this.age,
      this.cnic,
      this.salary,
      this.hireDate,
      this.department});

  void printEmployeeDetail() {
    print("Name: ${name}");
    print("Age: ${age}");
    print("HireDate: ${hireDate}");
    print("cnic: ${cnic}");
    print("Salary: ${salary}");
    print("Department Name: ${department!.nameOfDepartment}");
    print("Department HOD : ${department!.hod}");
    print("Department Location ${department!.location}");
  }
}

class Department {
  Employee? hod;
  String? location;
  String? nameOfDepartment;
  Department({this.hod, this.location, this.nameOfDepartment});
}

void main() {
  Employee emp1 = Employee(
      age: 23,
      name: "Faraz",
      cnic: 3434343,
      hireDate: "10/10/2022",
      salary: 30000,
      department: Department(
          nameOfDepartment: "CS", hod: Employee(
            name: "Babar",
          ), location: "Jamshoro"));
  emp1.printEmployeeDetail();

  print("--------------------");
  Employee emp2 = Employee();
  emp2.name = "Hussain";
  emp2.age = 51;
  emp2.cnic = 343434244;
  emp2.hireDate = "10/12/2021";
  emp2.salary = 30000;
  Department dept2 = Department();
  dept2.nameOfDepartment = "Math";
  dept2.hod = Employee(
    name: "Shoaib"
  );
  dept2.location = "Hyderabad";
  emp2.department = dept2;
  emp2.printEmployeeDetail();
}
