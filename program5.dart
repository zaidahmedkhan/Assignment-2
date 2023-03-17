// Write a program that takes a String as a input and checks that if it is a
// palindrome.A palindrome is a String that reads the same forward and backwards
// For example, "racecar" is a Palindrome.

import 'dart:io';

void main() {
  print("Enter word");
  String Input = stdin.readLineSync() as String;

  if (palindrome(Input)) {
    print("It is a Palindrome");
  } else {
    print("It is not a Palindrome");
  }
}

bool palindrome(String value) {
  return value.toLowerCase() == value.split('').reversed.join().toLowerCase();
}
