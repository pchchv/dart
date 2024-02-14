/// 5. Write a dart program to create 100 files using loop.
import 'dart:io';

void main() {
    Directory dir = Directory.current;
    for (int i = 0; i < 100; i++) {
        new File("${dir.path}/loop/loop${i}.txt").createSync();
    }
}