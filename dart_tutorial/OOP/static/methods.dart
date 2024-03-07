import 'dart:math';

class SimpleInterest {
    static double calculateInterest(double principal, double rate, double time) {
        return (principal * rate * time) / 100;
    }
}

class PasswordGenerator {
    static String generateRandomPassword() {
        List<String> allalphabets = "abcdefghijklmnopqrstuvwxyz".split("");
        List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        List<String> specialCharacters = ["@", "#", "%", "&", "*"];
        List<String> password = [];

        for (int i = 0; i < 5; i++) {
            password.add(allalphabets[Random().nextInt(allalphabets.length)]);
            password.add(numbers[Random().nextInt(numbers.length)].toString());
            password.add(specialCharacters[Random().nextInt(specialCharacters.length)]);
        }
        return password.join();
    }
}

void main() {
    print("The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");

    print("\n-------------------\n");

    print(PasswordGenerator.generateRandomPassword());
}