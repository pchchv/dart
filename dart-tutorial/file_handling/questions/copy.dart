/// 4. Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
import 'dart:io';

void main() {
    new File("hello.txt").copy("hello_copy.txt");
}