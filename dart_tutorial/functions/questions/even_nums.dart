/// 2. Write a program in Dart to print even numbers between intervals using function.
import 'dart:io';

void printNums(int start, end) {
    for (; start <= end; start++) {
        if (start % 2 == 0) {
            print(start);
        }
    }
}

void main() {
    stdout.write("Enter the minimum number: ");
    int min = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the maximum number: ");
    int max = int.parse(stdin.readLineSync()!);

    printNums(min, max);
}