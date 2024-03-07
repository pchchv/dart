class Student {
    String? name;
    int? age;
    int? rollNumber;
    // Constructors
    // Standart parameterized constructor
    // Student(this.name, this.age, this.rollNumber);

    // Parameterized constructor with named parameters
    // Student({String? name, int? age, int? rollNumber}) {
    //     this.name = name;
    //     this.age = age;
    //     this.rollNumber = rollNumber;
    // }

    // Parameterized constructor with default values
      Student({String? name = "John", int? age = 0}) {
        this.name = name;
        this.age = age;
      }
}

void main(){
    // Here student is object of class Student. 
    // Student student = Student("John", 20, 1);
    Student student = Student();
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Roll Number: ${student.rollNumber}");
}