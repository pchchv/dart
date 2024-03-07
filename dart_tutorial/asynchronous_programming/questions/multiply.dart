import 'dart:io';
/// 9. Write a Dart program that takes a list of integers as input, multiplies each integer by 2 asynchronously, and then prints the modified list.

Future<List<int>> multiply(List<String> list) {
    return Future.delayed(Duration(seconds:2), ()=> list.map((n) => int.parse(n) * 2).toList());
    
}


void main() async {
    stdout.write("Enter nums: ");
    List<String> l = stdin.readLineSync()!.split(" ");
    List<int> lInt = await multiply(l);
    print("Modified list: ${lInt}");
}