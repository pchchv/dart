class Laptop {
    // Default Constructor
    Laptop() {
        print("Laptop constructor");
    }

    // Named Constructor
    Laptop.named() {
        print("Laptop named constructor");
    }
}

class MacBook extends Laptop {
    // Constructor
    MacBook() : super.named() {
        print("MacBook constructor");
    }
}

void main() {
    // ignore: unused_local_variable
    var macbook = MacBook();
}