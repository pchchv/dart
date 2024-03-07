class Laptop {
    // Constructor
    Laptop(String name, String color) {
        print("Laptop constructor");
        print("Name: $name");
        print("Color: $color");
    }
}

class MacBook extends Laptop {
    // Constructor
    MacBook(String name, String color) : super(name, color) {
        print("MacBook constructor");
    }
}

/*
class MacBook extends Laptop {
    // Constructor
    MacBook({String name, String color}) : super(name: name, color: color) {
        print("MacBook constructor");
    }
}
*/

class Person {
    String name;
    int age;

    // Constructor
    Person(this.name, this.age);
}

class Student extends Person {
    int rollNumber;

    // Constructor
    Student(String name, int age, this.rollNumber) : super(name, age);
}

void main() {
    // ignore: unused_local_variable
    var macbook = MacBook("MacBook Pro", "Silver");

    print("\n-------------------\n");
    
    var student = Student("John", 20, 1);
    print("Student name: ${student.name}");
    print("Student age: ${student.age}");
    print("Student roll number: ${student.rollNumber}");

    /*
    print("\n-------------------\n");

    // ignore: unused_local_variable
    var macbook = MacBook(name: "MacBook Pro", color: "Silver");
    */
}