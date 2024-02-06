/// 4. Write a program in Dart that finds simple interest. Formula = (p * t * r) / 100

import 'dart:io';

void main() {
    stdout.write("Enter the persent value:");
    int? p = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the interest rate:");
    int? r = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the time period:");
    int? t = int.parse(stdin.readLineSync()!);

    var si = (p * r * t) / 100;
    print("Simple interest is ${si}");
}