/// 2. Write a dart program to append your friends name to a file that already has your name.
import 'dart:io';

final file = File("hello.txt");

void add(String name) {
    file.writeAsStringSync("\n" + name, mode: FileMode.append);
} 

void main() {
    List<String> friends = ["Max", "Valeria", "Alex", "Vlad", "Mike"];
    for (String friend in friends) {
        add(friend);
    }
}