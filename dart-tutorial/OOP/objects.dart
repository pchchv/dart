class Bicycle {
    String? color;
    int? size;
    int? currentSpeed;
  
    void changeGear(int newValue) {
        currentSpeed = newValue;
    }
  
    void display() {
        print("Color: $color");
        print("Size: $size");
        print("Current Speed: $currentSpeed");
    }
}

class Animal {
    String? name;
    int? numberOfLegs;
    int? lifeSpan;
    
    void display() {
        print("Animal name: $name.");
        print("Number of Legs: $numberOfLegs.");
        print("Life Span: $lifeSpan.");
    }
}

class Car {
    String? name;
    String? color;
    int? numberOfSeats;
    
    void start() {
        print("$name Car Started.");
    }
}

void main(){
    // Here bicycle is object of class Bicycle. 
    Bicycle bicycle = Bicycle();
    bicycle.color = "Red";
    bicycle.size = 26;
    bicycle.currentSpeed = 0;
    bicycle.changeGear(5);
    bicycle.display();

    print("");

    // Here animal is object of class Animal.
    Animal animal = Animal();
    animal.name = "Lion";
    animal.numberOfLegs = 4;
    animal.lifeSpan = 10;
    animal.display();

    print("");

    // Here car is object of class Car. 
    Car car = Car();
    car.name = "BMW";
    car.color = "Red";
    car.numberOfSeats = 4;
    car.start();

    // Here car2 is another object of class Car.
    Car car2 = Car();
    car2.name = "Audi";
    car2.color = "Black";
    car2.numberOfSeats = 4;
    car2.start();
}