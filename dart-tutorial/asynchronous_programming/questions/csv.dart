/// 4. Write a program in dart that reads csv file and print it’s content.
import 'dart:io';

void main() {
  File file = File('content.csv');
  String contents = file.readAsStringSync();
  List<String> lines = contents.split('\n');
  for (var line in lines) {
      print(line);
  }
}
