/// 5. Write a program in Dart that find the area of a circle using function.
/// Formula: pi * r * r.
import 'dart:io';
import 'dart:math';

double area(double r) {
    return pi * pow(r, 2);
}

void main() {
    stdout.write("Enter the circle radius: ");
    double r = double.parse(stdin.readLineSync()!);
    double circleArea = area(r);
    print("The area of a circle is $circleArea");
}