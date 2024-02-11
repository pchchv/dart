/// 8. Write a function in Dart named add that takes two numbers as arguments and returns their sum.
import 'dart:io';

double add(double n1, n2) {
    return n1 + n2;
}

void main() {
    stdout.write("Enter the first number: ");
    double n1 = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the second number: ");
    double n2 = double.parse(stdin.readLineSync()!);

    double sum = add(n1, n2);
    print("Sum is $sum");
}