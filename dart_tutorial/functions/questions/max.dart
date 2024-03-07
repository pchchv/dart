/// 9. Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
import 'dart:io';

int maxNumber(int n1, n2, n3) {
    return [n1, n2, n3].reduce((curr, next) => curr > next? curr: next);
}

void main() {
    stdout.write("Enter the first number: ");
    int n1 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the second number: ");
    int n2 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the third number: ");
    int n3 = int.parse(stdin.readLineSync()!);
    
    int maxn = maxNumber(n1, n2, n3);
    print("Largest number is ${maxn}"); 
}