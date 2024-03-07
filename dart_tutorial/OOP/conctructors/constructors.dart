class Teacher {
    String? name;
    int? age;
    String? subject;
    double? salary;

    // Constructor
    Teacher(String name, int age, String subject, double salary) {
        this.name = name;
        this.age = age;
        this.subject = subject;
        this.salary = salary;
    }
    
    // Method
    void display() {
        print("Name: ${this.name}");
        print("Age: ${this.age}");
        print("Subject: ${this.subject}");
        print("Salary: ${this.salary}\n"); // \n is used for new line
    }
}

class Car {
    String? name;
    double? price;

    // Constructor
    Car(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // Method
    void display() {
        print("Name: ${this.name}");
        print("Price: ${this.price}");
    }
}

 class Staff {
    String? name;
    int? phone1;
    int? phone2;
    String? subject;

    // Constructor
    Staff(String name, int phone1, String subject) {
        this.name = name;
        this.phone1 = phone1;
        this.subject = subject;
    }

    // Method
    void display() {
        print("Name: ${this.name}");
        print("Phone1: ${this.phone1}");
        print("Phone2: ${this.phone2}");
        print("Subject: ${this.subject}");
    }
}

void main() {
  // Creating teacher1 object of class Teacher
  Teacher teacher1 = Teacher("John", 30, "Maths", 50000.0);
  teacher1.display();

  // Creating teacher2 object of class Teacher
  Teacher teacher2 = Teacher("Smith", 35, "Science", 60000.0);
  teacher2.display();

  print("\n---------------\n");

  // Here car is object of class Car.
  Car car = Car("BMW", 500000.0);
  car.display();

  print("\n---------------\n");

  // Here staff is object of class Staff.
  Staff staff = Staff("John", 1234567890, "Maths");
  staff.display();
}