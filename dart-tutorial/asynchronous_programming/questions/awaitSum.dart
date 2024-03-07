/// 7. Write a Dart program that takes in two integers as input, waits for 3 seconds, and then prints the sum of the two numbers.
import 'dart:io';

Future<int> sumTwoInt(int n1, int n2) {
    return Future.delayed(Duration(seconds:3), () => (n1 + n2));
}

(int, int) getNums() {
    stdout.write("Enter first number: ");
    int n1 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter second number: ");
    int n2 = int.parse(stdin.readLineSync()!);
    return (n1, n2);
}

void main() async {
    var (int n1, n2) = getNums();
    int sum = await sumTwoInt(n1, n2);
    print("Sum of two numbers is ${sum}");
}