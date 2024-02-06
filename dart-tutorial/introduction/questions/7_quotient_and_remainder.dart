/// Write a program to find quotient and remainder of two integers.
import 'dart:io';

void main() {
    stdout.write("Enter dividend: ");
    int? dividend = int.parse(stdin.readLineSync()!);
    stdout.write("Enter divisor: ");
    int? divisor = int.parse(stdin.readLineSync()!);

    double quotient = dividend / divisor;
    int remainder = dividend % divisor;

    print("Quotient is $quotient");
    print("Remainder is ${remainder}");
}