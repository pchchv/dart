class Laptop {
    String? brand;
    int? price;

    // Constructor
    Laptop() {
        print("This is a default constructor");
    }
}

class Student {
    String? name;
    int? age;
    String? schoolname;
    String? grade;

    // Default Constructor
    Student() {
      print("Constructor called"); // this is for checking the constructor is called or not.
      schoolname = "ABC School";
    }
}

class Person {
    String? name;
    String? planet;

    Student() {
        name = "Jack";
        planet = "Earth";
    }
}

void main() {
    // Here laptop is object of class Laptop.
    Laptop laptop = Laptop();
    print(laptop.brand);
    print(laptop.price);

    print("\n---------------\n");

    // Here student is object of class Student.
    Student student = Student();
    student.name = "John";
    student.age = 10;
    student.grade = "A";
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("School Name: ${student.schoolname}");
    print("Grade: ${student.grade}");

    print("\n---------------\n");

    Person person = Person();
    print(person.name);
    print(person.planet);
}
