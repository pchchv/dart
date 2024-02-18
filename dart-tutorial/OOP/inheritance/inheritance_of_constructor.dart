class Laptop {
    // Constructor
    Laptop(String name, String color) {
        print("Laptop constructor");
        print("Name: $name");
        print("Color: $color");
    }
}

class MacBook extends Laptop {
    // Constructor
    MacBook(String name, String color) : super(name, color) {
        print("MacBook constructor");
    }
}

void main() {
    // ignore: unused_local_variable
    var macbook = MacBook("MacBook Pro", "Silver");
}