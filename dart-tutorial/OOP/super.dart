class Laptop {
    // Method
    void show() {
        print("Laptop show method");
    }
}

class MacBook extends Laptop {
    void show() {
        super.show(); // Calling the show method of the parent class
        print("MacBook show method");
    }
}

class Car {
    int noOfSeats = 4;
}

class Tesla extends Car {
    int noOfSeats = 6;

    void display() {
        print("No of seats in Tesla: $noOfSeats");
        print("No of seats in Car: ${super.noOfSeats}");
    }
}

/*
class Employee {
    // Constructor
    Employee(String name, double salary) {
        print("Employee constructor");
        print("Name: $name");
        print("Salary: $salary");
    }
}

class Manager extends Employee {
    // Constructor
    Manager(String name, double salary) : super(name, salary) {
        print("Manager constructor");
    }
}
*/

class Employee {
  // Named constructor
  Employee.manager() {
    print("Employee named constructor");
  }
}

class Manager extends Employee {
  // Named constructor
  Manager.manager() : super.manager() {
    print("Manager named constructor");
  }
}


void main() {
    // Creating an object of the MacBook class
    MacBook macbook = MacBook();
    macbook.show();

    print("\n-------------------\n");

    var tesla = Tesla();
    tesla.display();

    print("\n-------------------\n");

    /*
    // ignore: unused_local_variable
    Manager manager = Manager("John", 25000.0);
    */

    // ignore: unused_local_variable
    Manager manager = Manager.manager();
}
