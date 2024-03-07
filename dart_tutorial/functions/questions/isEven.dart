/// 10. Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
import 'dart:io';

bool isEven(int n) {
    if (n % 2 == 0) {
        return true;
    }
    return false;
}

void main() {
    stdout.write("Enter the number: ");
    int n = int.parse(stdin.readLineSync()!);

    if (isEven(n)) {
        print("${n} is even.");
    } else {
        print("${n} is odd.");
    }
}