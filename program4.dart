// Create a class named "Course" with properties such as name, code,instructor,
//and credits. Add getter and setter methods for each property. Also, add a
// method to calculate the total cost of the course based on the number of
// credits and the cost per credit.

import 'dart:io';
import 'dart:math';

void main() {
  var course = Course();
  course.name = "Flutter Development";
  course.code = "ZAL15";
  course.instructor = "Muzammil Bilwani";
  course.credits = 20;
  course.costpercredits = 5;

  print("Course: ${course.name}");
  print("Code: ${course.code}");
  print("instructor:${course.instructor}");
  print("Credits:${course.credits}");
  print("Cost per credits:${course.costpercredits}");

  print("Total cost of the course: ${course.calTotalcost()}");
}

class Course {
  late String _name;
  late String _code;
  late String _instructor;
  late double _credits;
  late double _costpercredits;

  double? Total;

  set name(String value) {
    _name = value;
  }

  set code(String value) {
    _code = value;
  }

  set instructor(String value) {
    _instructor = value;
  }

  set credits(double value) {
    _credits = value;
  }

  set costpercredits(double value) {
    _costpercredits = value;
  }

  String get name => _name;
  String get code => _code;
  String get instructor => _instructor;
  double get credits => _credits;
  double get costpercredits => _costpercredits;

  double calTotalcost() => _credits * _costpercredits;
}
