/// 2. Write a dart program to check whether a character is a vowel or consonant.
import 'dart:io';

void main() {
    stdout.write("Enter the charracter: ");
    String? s = stdin.readLineSync();
    if (s!.length != 1) {
        print("Enter only one charracter!");
    } else {
        String char = s.toUpperCase();
        if (char == "A" || char == "E" || char == "I" || char == "O" || char == "U") {
            print("Charracter is vowel.");
        } else if (char == "B" || char == "C" || char == "D" || char == "F" || char == "G" ||
        char == "J" || char == "K" || char == "L" || char == "M" || char == "N" ||
        char == "P" || char == "Q" || char == "S" || char == "T" || char == "V" ||
        char == "X" || char == "Z" || char == "H" || char == "R" || char == "W" || char == "Y") {
            print("Charracter is consonant.");
        } else {
            print("The character is not a letter!");
        }
    }
}