import 'dart:convert';

class Student {
    String? name;
    int? age;
    int? rollNumber;

    // Default Constructor
    Student() {
        print("This is a default constructor");
    }

    // Named Constructor
    Student.namedConstructor(String name, int age, int rollNumber) {
        this.name = name;
        this.age = age;
        this.rollNumber = rollNumber;
    }
}

class Mobile {
    String? name;
    String? color;
    int? price;

    Mobile(this.name, this.color, this.price);
    // here Mobile() is a named constructor
    Mobile.namedConstructor(this.name, this.color, [this.price = 0]);

    void displayMobileDetails() {
        print("Mobile name: $name.");
        print("Mobile color: $color.");
        print("Mobile price: $price");
    }
}

class Animal {
    String? name;
    int? age;

    // Default Constructor
    Animal() {
        print("This is a default constructor");
    }

    // Named Constructor
    Animal.namedConstructor(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Named Constructor
      Animal.namedConstructor2(String name) {
          this.name = name;
    }
}

class Person {
    String? name;
    int? age;

    Person(this.name, this.age);

    Person.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        age = json['age'];
    }

    Person.fromJsonString(String jsonString) {
        Map<String, dynamic> json = jsonDecode(jsonString);
        name = json['name'];
        age = json['age'];
    }
}

class Car {
    String? name;
    String? color;
    double? price;

    Car(this.name, this.color, this.price);

    Car.namedConstructor(this.name, this.color, [this.price = 0]);

    void display() {
        print("Name: ${this.name}");
        print("Color: ${this.color}");
        print("Price: ${this.price}");
    }
}

void main() {
    // Here student is object of class Student.
    Student student = Student.namedConstructor("John", 20, 1);
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Roll Number: ${student.rollNumber}");

    print("\n---------------\n");

    var mobile1 = Mobile("Samsung", "Black", 20000);
    mobile1.displayMobileDetails();
    var mobile2 = Mobile.namedConstructor("Apple", "White");
    mobile2.displayMobileDetails();

    print("\n---------------\n");

    // Here animal is object of class Animal.
    Animal animal = Animal.namedConstructor("Dog", 5);
    print("Name: ${animal.name}");
    print("Age: ${animal.age}");

    Animal animal2 = Animal.namedConstructor2("Cat");
    print("Name: ${animal2.name}");

    print("\n---------------\n");

    // Here person is object of class Person.
    String jsonString1 = '{"name": "Bishworaj", "age": 25}';
    String jsonString2 = '{"name": "John", "age": 30}';

    Person p1 = Person.fromJsonString(jsonString1);
    print("Person 1 name: ${p1.name}");
    print("Person 1 age: ${p1.age}");

    Person p2 = Person.fromJsonString(jsonString2);
    print("Person 2 name: ${p2.name}");
    print("Person 2 age: ${p2.age}");

    print("\n---------------\n");

    Car car1 = Car("Jeep", "White", 25555);
    car1.display();
    Car car2 = Car.namedConstructor("BMW", "Red");
    car2.display();

}