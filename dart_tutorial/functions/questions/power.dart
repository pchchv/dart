/// 7 . Write a program in Dart to calculate power of a certain number.
/// For e.g 5^3=125.
import 'dart:io';

double power(double n, exponent) {
    double res = n;
    if (exponent == 0) {
        res = 1;
    } else if (exponent > 1) {
        res = ppow(n, exponent, res);
    } else if (exponent < 0) {
        res = ppow(n, exponent * -1, res);
        res = 1 / res;
    }
    return res;
}

double ppow(double n, exponent, res) {
    for (; exponent > 1; exponent--) {
            res *= n;
    }
    return res;
}

void main() {
    stdout.write("Enter the number: ");
    double n = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the exponent: ");
    double exponent = double.parse(stdin.readLineSync()!);
    
    double pn = power(n, exponent);
    print("${n}^${exponent} = ${pn}");
}