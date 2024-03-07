/// 10. Write a Dart program to convert String to int.
import 'dart:io';

void main() {
    stdout.write("Enter the number: ");
    String? s = stdin.readLineSync();

    print("s = ${s}, s is int - ${s is int}");

    int n = int.parse(s!);
    // ignore: unnecessary_type_check
    print("n = ${n}, n is int - ${n is int}");
}