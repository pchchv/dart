// Student class
class Student {
    // late final variable
    late final String name;

    // constructor
    Student(this.name);
}

void main() {
    // object of Student class
    Student student = Student("John");
    print(student.name);
    student.name = "Doe"; // Error
}
