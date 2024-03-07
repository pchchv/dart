import 'dart:io';
/// 8. Write a Dart program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.

void main() {
    stdout.write("Enter a strings: ");
    List<String> l = stdin.readLineSync()!.split(" ");
    Future.delayed(Duration(seconds:1),()=>l.sort());
    Future.delayed(Duration(seconds:2),()=>print(l));
}
