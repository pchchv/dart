import 'dart:io';
/// 10. Write a Dart program that takes a string as input, reverses the string asynchronously, and then prints the reversed string.

Future<String> rev(String s) {
    return Future.delayed(Duration(seconds:1),()=>s.split("").reversed.join(""));
}


void main() async {
    stdout.write("Enter a string: ");
    String s = stdin.readLineSync()!;
    s = await rev(s);
    print(s);
}