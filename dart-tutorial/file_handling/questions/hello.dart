/// 1. Write a dart program to add your name to “hello.txt” file.
import 'dart:io';

void main() {
    final file = File("hello.txt");
    file.writeAsString("Jack");
    print('File written.');
}