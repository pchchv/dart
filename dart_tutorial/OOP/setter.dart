class NoteBook {
    // Private Properties
    String? _name;
    double? _prize;

    // Setter to update private property _name
    set name(String name) => this._name = name;

    // Setter to update private property _prize
    set price(double price) => this._prize = price;

    // Method to display the values of the properties
    void display() {
        print("Name: ${_name}");
        print("Price: ${_prize}");
    }
}

class NoteBook2 {
  // Private properties
  String? _name;
  double? _prize;

  // Setter to update the value of name property
  set name(String name) => _name = name;

  // Setter to update the value of price property
  set price(double price) {
    if (price < 0) {
      throw Exception("Price cannot be less than 0");
    }
    this._prize = price;
  }

  // Method to display the values of the properties
  void display() {
    print("Name: $_name");
    print("Price: $_prize");
  }
}

class Student {
    // Private properties
    String? _name;
    int? _classnumber;

    // Setter to update the value of name property
    set name(String name) => this._name = name;

    // Setter to update the value of classnumber property
    set classnumber(int classnumber) {
        if (classnumber <= 0 || classnumber > 12) {
            throw ('Classnumber must be between 1 and 12');
        }
        this._classnumber = classnumber;
    }

    // Method to display the values of the properties
    void display() {
        print("Name: $_name");
        print("Class Number: $_classnumber");
    }
}

void main() {
    // Create an object of NoteBook class
    NoteBook nb = new NoteBook();
    // setting values to the object using setter
    nb.name = "Dell";
    nb.price = 500.00;
    // Display the values of the object
    nb.display();

    print("\n-----------\n");

    // Create an object of NoteBook class
    NoteBook2 nb2 = new NoteBook2();
    // setting values to the object using setter
    nb2.name = "Dell";
    nb2.price = 250;

    // Display the values of the object
    nb2.display();

    print("\n-----------\n");

    // Create an object of Student class
    Student s = new Student();
    // setting values to the object using setter
    s.name = "John Doe";
    s.classnumber = 12;

    // Display the values of the object
    s.display();

    // This will generate error
    //s.setClassNumber(13);
}