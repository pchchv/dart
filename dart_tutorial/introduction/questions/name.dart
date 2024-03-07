/// 6. Write a program to print full name of a from first name and last name using user input.

import 'dart:io';

void main() {
    stdout.write("Enter a first name: ");
    String? firstName = stdin.readLineSync();
    stdout.write("Enter a last name: ");
    String? lastName = stdin.readLineSync();

    print("Full name is $firstName $lastName");
}