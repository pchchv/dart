class Laptop {
    // Constructor
    Laptop() {
        print("Laptop constructor");
    }
}

class MacBook extends Laptop {
    // Constructor
    MacBook() {
        print("MacBook constructor");
    }
}

void main() {
  // ignore: unused_local_variable
  var macbook = MacBook();
}