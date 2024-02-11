/// 6. Write a program in Dart to reverse a String using function.
import 'dart:io';

String reverse(String s) {
    return s.split('').reversed.join();
}

void main() {
    stdout.write("Enter a string: ");
    String s = stdin.readLineSync()!;
    String rs = reverse(s);
    
    print("Reversed string: $rs");
}