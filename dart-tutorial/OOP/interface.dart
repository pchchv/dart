// creating an interface using concrete class
class Laptop {
    // method
    turnOn() {
        print('Laptop turned on');
    }
  
    // method
    turnOff() {
        print('Laptop turned off');
    }
}

class MacBook implements Laptop {
    // implementation of turnOn()
    @override
    turnOn() {
        print('MacBook turned on');
    }

    // implementation of turnOff()
    @override
    turnOff() {
        print('MacBook turned off');
    }
}

// abstract class as interface
abstract class Vehicle {
    void start();
    void stop();
}

// implements interface
class Car implements Vehicle {
    @override
    void start() {
        print('Car started');
    }

    @override
    void stop() {
        print('Car stopped');
    }
}

void main() {
    var macBook = MacBook();
    macBook.turnOn();
    macBook.turnOff();

    print("\n-------------------\n");

    var car = Car();
    car.start();
    car.stop();
}
