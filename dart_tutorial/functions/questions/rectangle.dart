/// 12. Write a function in Dart called calculateArea that calculates the area of a rectangle.
/// It should take length and width as arguments, with a default value of 1 for both.
/// Formula: length * width.
import 'dart:io';

double calculateArea([double len = 1, width = 1]) {
    return len * width;
}

void main() {
    print("Area of a rectangle of size 1 by 1 is ${calculateArea()}");
    print("");
    stdout.write("Enter the length of the rectangle: ");
    double length = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the width of the rectangle: ");
    double width = double.parse(stdin.readLineSync()!);

    double area = calculateArea(length, width);
    print("Area of a rectangle is $area");   
}