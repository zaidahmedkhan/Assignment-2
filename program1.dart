// Create a class name "Circle" with properties such as radius.
// Add getter and setter methods for the radius property.
// Also, add a method to calculate the circumference of the circle.

import 'dart:io';
import 'dart:math';

void main() {
  Circle radius1 = Circle();
  radius1.radius = 10;
  radius1.calculateCircumference();

  print("Radius:${radius1.radius}");
  print("Circumference: ${radius1.Circumference}");
}

class Circle {
  double _radius = 0;
  double? Circumference;

  set radius(double radius) {
    if (_radius < 0) {
      throw Exception("RADIUS MUST BE POSITIVE");
    }

    _radius = radius;
  }

  double get radius => _radius;

  void calculateCircumference() {
    Circumference = 2 * 3.14 * _radius;
  }
}
