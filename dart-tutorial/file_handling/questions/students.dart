/// 7. Write a dart program to store name, age, and address of students in a csv file and read it.
import 'dart:io';

void add() {
    stdout.write("Enter the student's name: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter the student's address: ");
    String? address = stdin.readLineSync();
    stdout.write("Enter the student's age: ");
    String? age = stdin.readLineSync();

    File file = File("students.csv");  
    file.writeAsStringSync('$name,$address,$age\n', mode: FileMode.append);
}

void view() {
    File file = File('students.csv');
    String contents = file.readAsStringSync();
    List<String> lines = contents.split('\n');
    for (var line in lines) {
        print('---------------------');
        print(line);
    }
}

void processor() {
    String command = ".'.";
    while (command != "stop") {
        switch (command) {
            case "view":
            view();
            case "add":
            add();
            default:
            if (command != ".'.") {
                print("invalid command");
            }
        }

        stdout.write("Enter the command: ");
        command = stdin.readLineSync()!;
    }
}

void main() {
    File file = File("students.csv");
    file.writeAsStringSync('Name,Address,Age\n');

    print("""Commands:
add  - add new student
view - view the list of all students
stop - stop the program
""");

    processor();
}
