// Create a class named "Book" with properties such as title, author, publisher
// and price. Add getter and setter method for each property. Also add a method
// to calculate the discount price of the book based on a given percentage.

import 'dart:io';
import 'dart:math';

void main() {
  var book = Book();

  book.title = "Shah Name e Islam";
  book.author = "Hafeez Jalandheri";
  book.publisher = "Fareed Book Depot";
  book.price = 500;

  double percentage = 10;

  print("title: ${book.title}");
  print("author:${book.author}");
  print("publisher:${book.publisher}");
  print("price:${book.price}");
  print("Discount Percentage :$percentage");
  print("Discounted Price: ${book.calculateDiscount(percentage)}");
}

class Book {
  late String _title;
  late String _author;
  late String _publisher;
  late double _price;

  set title(String value) {
    _title = value;
  }

  set author(String value) {
    _author = value;
  }

  set publisher(String value) {
    _publisher = value;
  }

  set price(double value) {
    _price = value;
  }

  String get title => _title;

  String get author => _author;

  String get publisher => _publisher;

  double get price => _price;

  double calculateDiscount(double percentage) {
    double discountAmount = price * (percentage / 100);
    double discountedPrice = price - discountAmount;
    return discountedPrice;
  }
}
