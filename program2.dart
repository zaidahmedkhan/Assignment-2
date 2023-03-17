// Create a class named "Student" with properties such as name,age,major
//and GPA.Add getter and setter method for each property. Also, add a method to
// calculate the student's grade level based on their age.

import 'dart:io';
import 'dart:math';

void main() {
  var student = Student("Zaid Ahmed Khan", 18, "Computer Science", 3.1);

  student.name = "Zaid Ahmed Khan";
  student.age = 18;
  student.major = "Computer Science";
  student.GPA = 3.1;
  student.Gradelevel();

  print("name: ${student.name}");
  print("age:${student.age}");
  print("major:${student.major}");
  print("GPA:${student.GPA}");
  print("GRADE:${student.Gradelevel()}");
}

class Student {
  late String _name;
  late double _age;
  late String _major;
  late double _GPA;

  Student(
    this._name,
    this._age,
    this._major,
    this._GPA,
  );

  set name(String value) {
    _name = value;
  }

  set age(double value) {
    _age = value;
  }

  set major(String value) {
    _major = value;
  }

  set GPA(double value) {
    _GPA = value;
  }

  String get name => _name;

  double get age => _age;

  String get major => _major;

  double get GPA => _GPA;

  String Gradelevel() {
    if (_age >= 18 || _age <= 20) {
      return ("FRESHIER");
    } else if (_age >= 20 || _age < 21) {
      return ("JUNIOR");
    } else if (_age >= 21) {
      return ("SENIOR");
    } else {
      return ("NOT FOUND");
    }
  }
}
