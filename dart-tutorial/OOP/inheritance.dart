class Person {
    // Properties
    String? name;
    int? age;

    // Method
    void display() {
        print("Name: $name");
        print("Age: $age");
    }
}

// Here In student class, we are extending the
// properties and methods of the Person class
class Student extends Person {
    // Fields
    String? schoolName;
    String? schoolAddress;

    // Method
    void displaySchoolInfo() {
        print("School Name: $schoolName");
        print("School Address: $schoolAddress");
    }
}



class Car{
    late String color;
    late int year;

    void start(){
        print("Car started");
    }  
}

class Toyota extends Car{
    late String model;
    late int price;

    void showDetails(){
        print("Model: $model");
        print("Price: $price");
    }
}

void main() {
    // Creating an object of the Student class
    var student = Student();
    student.name = "John";
    student.age = 20;
    student.schoolName = "ABC School";
    student.schoolAddress = "New York";
    student.display();
    student.displaySchoolInfo();

    print("\n-------------------\n");

    var toyota = Toyota();
    toyota.color = "Red";
    toyota.year = 2020;
    toyota.model = "Camry";
    toyota.price = 20000;
    toyota.start();
    toyota.showDetails();
}