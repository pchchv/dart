// late variable
late String name;

class Person {
    // late variable
    late String name;

    void greet() {
        print("Hello $name");
    }
}

// Person class
class Person2 {
    final int age;
    final String name;
    late String description = heavyComputation();

    // constructor
    Person2(this.age, this.name) {
        print("Constructor is called");
    }
    
    // method
    String heavyComputation() {
        print("heavyComputation is called");
        return "Heavy Computation";
    }
}

class Person3 {
    // declaring late variables
    late String fullName = _getFullName();
    late String firstName = fullName.split(" ").first;
    late String lastName = fullName.split(" ").last;

    // method
    String _getFullName() {
        print("_getFullName is called");
        return "John Doe";
    }
}

// function
String provideCountry() {
    print("Function is called");
    return "USA";
}


void main() {
    // assigning value to late variable
    name = "John";
    print(name);

    Person person = Person();
    // late variable is initialized here
    person.name = "John";
    person.greet();

    print("Starting");
    // late variable
    late String value = provideCountry();
    print("End");
    print(value);

    // object of Person class
    Person2 person2 = Person2(10, "John");
    print(person2.name);
    print(person2.description);

    print("Start");
    Person3 person3 = Person3();
    print("First Name: ${person3.firstName}");
    print("Last Name: ${person3.lastName}");
    print("Full Name: ${person3.fullName}");
    print("End");
}