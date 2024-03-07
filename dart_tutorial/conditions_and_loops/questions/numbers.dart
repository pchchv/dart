/// 3. Write a dart program to check whether a number is positive, negative, or zero.
import 'dart:io';

void main() {
    stdout.write("Enter the number: ");
    double? n = double.parse(stdin.readLineSync()!);
    if (n > 0) {
        print("${n} is positive.");
    } else if (n < 0) {
        print("${n} is negative.");
    } else {
        print("${n} is zero.");
    }
}