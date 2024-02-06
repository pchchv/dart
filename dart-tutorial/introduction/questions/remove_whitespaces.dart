/// 9. Write a program in Dart to remove all whitespaces from String.

import 'dart:io';

void main() {
    stdout.write("Enter the string: ");
    String? s = stdin.readLineSync();

    s = s?.replaceAll(" ", "");
    print(s);
}