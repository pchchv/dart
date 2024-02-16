class Point {
    final int x;
    final int y;

    const Point(this.x, this.y);
}

class Student {
    final String? name;
    final int? age;
    final int? rollNumber;

    // Constant Constructor
    const Student({this.name, this.age, this.rollNumber});
}

class Car {
    final String? name;
    final String? model;
    final int? price;

    // Constant Constructor
    const Car({this.name, this.model, this.price});
}

class Customer {
    final String? name;
    final int? age;
    final String? phone;

    const Customer({this.name, this.age, this.phone});
}



void main() {
    // p1 and p2 has the same hash code.
    Point p1 = const Point(1, 2);
    print("The p1 hash code is: ${p1.hashCode}");

    Point p2 = const Point(1, 2);
    print("The p2 hash code is: ${p2.hashCode}");
    // without using const
    // this has different hash code.
    Point p3 = Point(2, 2);
    print("The p3 hash code is: ${p3.hashCode}");

    Point p4 = Point(2, 2);
    print("The p4 hash code is: ${p4.hashCode}");

    print("\n---------------\n");

    // Here student is object of Student.
    const Student student = Student(name: "John", age: 20, rollNumber: 1);
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Roll Number: ${student.rollNumber}");

    print("\n---------------\n");

    // Here car is object of class Car.
    const Car car = Car(name: "BMW", model: "X5", price: 50000);
    print("Name: ${car.name}");
    print("Model: ${car.model}");
    print("Price: ${car.price}");

    print("\n---------------\n");

    // Here car is object of class Car.
    const Customer customer = Customer(name: "Jack", age: 30, phone: "+79998523674");
    print("Name: ${customer.name}");
    print("Model: ${customer.age}");
    print("Price: ${customer.phone}");
}
