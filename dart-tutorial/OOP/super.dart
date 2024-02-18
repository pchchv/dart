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

void main() {
    // Creating an object of the MacBook class
    MacBook macbook = MacBook();
    macbook.show();

    print("\n-------------------\n");

    var tesla = Tesla();
    tesla.display();
}
