/// 11. Suppose, you often go to restaurant with friends and you have to split amount of bill.
/// Write a program to calculate split amount of bill.
/// Formula= (total bill amount) / number of people

import 'dart:io';

void main() {
    stdout.write("Enter a total bill amount: ");
    double? amount = double.parse(stdin.readLineSync()!);
    stdout.write("Enter a numder of people: ");
    int? num = int.parse(stdin.readLineSync()!);

    print("Each person has to pay ${amount / num}");
}
