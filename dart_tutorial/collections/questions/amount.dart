/// 3. Create a program thats reads list of expenses amount using user input and print total.
import 'dart:io';

double withoutList() {
    double amount = 0;
    String s = "0";
    stdout.write("To stop, enter: stop\n");
    while (s != "stop") {
        amount += double.parse(s);
        stdout.write("Enter the expense: ");
        s = stdin.readLineSync()!;
    }
    return amount;
}

double withList() {
    double amount = 0;
    stdout.write("Enter a comma separated list of expenses (11, 28.04, 241.18):");
    String? s = stdin.readLineSync();
    List<String> list = s!.split(", ");
    list.forEach((n) => amount += double.parse(n));
    return amount;
}

void main() {
    double amount = withList();
    print("Amount of expenses: $amount\n\n");

    amount = withoutList();    
    print("Amount of expenses: $amount");
}