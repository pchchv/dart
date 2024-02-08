/// 1. Write a dart program to check if the number is odd or even.
import 'dart:io';

void main() {
    stdout.write("Enter the number: ");
    int? n = int.parse(stdin.readLineSync()!);
    if (n % 2 == 0) {
        print("${n} is even!");
    } else {
        print("${n} is odd!");
    }
}