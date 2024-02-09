/// 8. Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
import 'dart:io';

void main() {
    print(calc());
}

String calc() {
    stdout.write("Enter the equation as a * b: ");
    String s = stdin.readLineSync()!;
    var eq = s.split(" ");
    double res = 0;
    if (eq.length != 3) {
        print("invalid input");
        return calc();
    } else {
        double n1 = double.parse(eq[0]);
        double n2 = double.parse(eq[2]);
        switch (eq[1]) {
            case "+":
            res = n1 + n2;
            case "-":
            res = n1 - n2;
            case "/":
            res = n1 / n2;
            case "*":
            res = n1 * n2;
        }
    }
    return "$s = $res";
}