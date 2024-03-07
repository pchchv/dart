/// 4, Write a program in Dart that generates random password.
import 'dart:math';

final _random = Random();
List<String> numsList = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
List<String> lettersList = ["A", "a", "B", "b", "C", "c", "D", "d", "E", "e",
"F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k", "L", "l",
"M", "m", "N", "n", "O", "o", "P", "p", "Q", "q", "R", "r", "S", "s",
"T", "t", "U", "u", "V", "v", "W", "w", "X", "x", "Y", "y", "Z", "z"];
List<String> specCharsList = ["!", "\"", "#", "\$", "%", "&", "'", "(", ")",
"*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "@",
"[", "]", "^", "_", "`", "{", "|", "}", "~"];

String generator(bool nums, sChars, [bool letters = true, int len = 0]) {
    if (len < 0) {
        return "error: wrong length";
    } else if (len == 0) {
        len = _random.nextInt(33);
    }

    List<String> lists = <String>[];
    String password = ""; 
    if (letters) {
        lists.add("letters");
    }
    if (nums) {
        lists.add("nums");
    }
    if (sChars) {
        lists.add("specChars");
    }

    for (; len > 0; len--) {
        password += getChar(lists);
    }
    return password;
}

String getChar(List<String> lists) {
    String char = "";
    switch (lists[_random.nextInt(lists.length)]) {
        case "letters":
        char = lettersList[_random.nextInt(lettersList.length)];
        case "nums":
        char = numsList[_random.nextInt(numsList.length)];
        case "specChars":
        char = specCharsList[_random.nextInt(specCharsList.length)];
    }
    return char;
}

void main() {
    print(generator(true, true));
    print(generator(true, false));
    print(generator(false, false));
    print(generator(true, true, true, 17));
    print(generator(true, true, false, 17));
}