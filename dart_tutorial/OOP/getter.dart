class Person {
    // Properties
    String? firstName;
    String? lastName;

    // Constructor
    Person(this.firstName, this.lastName);

    // Getter
    String get fullName => "$firstName $lastName";
}

class NoteBook {
    // Private properties
    String _name;
    double _prize;

    // Constructor
    NoteBook(this._name, this._prize);

    /*
    // Getter method to access private property _name
    String get name => this._name!;

    // Getter method to access private property _prize
    double get price => this._prize!;
    */

    // Getter to access private property _name
    String get name {
        if (_name == "") {
            return "No Name";
        }
        return this._name;
    }
    
    // Getter to access private property _prize
    double get price {
        return this._prize;
    }
}

class Doctor {
    // Private properties
    String _name;
    int _age;
    String _gender;

    // Constructor
    Doctor(this._name, this._age, this._gender);

    // Getters
    String get name => _name;
    int get age => _age;
    String get gender => _gender;

    // Map Getter
    Map<String, dynamic> get map {
        return {"name": _name, "age": _age, "gender": _gender};
    }
}


void main() {
    Person p = Person("John", "Doe");
    print(p.fullName);


    print("\n--------------\n");

    // Create an object of NoteBook class
    NoteBook nb = new NoteBook("Dell", 500);
    // Display the values of the object
    print(nb.name);
    print(nb.price);

    print("\n--------------\n");
    
    // Create an object of NoteBook class
    nb = new NoteBook("Apple", 1000);
    print("First Notebook name: ${nb.name}");
    print("First Notebook price: ${nb.price}");
    NoteBook nb2 = new NoteBook("", 500);
    print("Second Notebook name: ${nb2.name}");
    print("Second Notebook price: ${nb2.price}");

    print("\n--------------\n");

    // Create an object of Doctor class
    Doctor d = Doctor("John", 41, "Male");
    print(d.map);
}