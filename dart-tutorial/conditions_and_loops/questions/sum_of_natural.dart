/// 5. Write a dart program to calculate the sum of natural numbers.
import 'dart:io';

void withFor(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum += i;
    }
    print("sum using for loop is ${sum}");
}

void withFormula(int n) {
    double sum = n * (n + 1) / 2;
    print("sum using mathemetical formula = $sum");
}

void main() {
    stdout.write("Enter the number: ");
    var n = int.parse(stdin.readLineSync()!);

    withFor(n);
    withFormula(n);
}