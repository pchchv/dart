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

class Rectangle{
    //properties of rectangle
    double? length;
    double? breadth;
  
    //functions of rectangle
    double area(){
        return length! * breadth!;
    }
}

class SimpleInterest{
    //properties of simple interest
    double? principal;
    double? rate;
    double? time;
  
    //functions of simple interest
    double interest(){
        return (principal! * rate! * time!)/100;
    }
}

class Home{
    String? name;
    String? address;
    int? numberOfRooms;

    void display() {
        print("Home name: $name");
        print("Home address: $address");
        print("Number of rooms in home: $numberOfRooms");
    }
}

void main(){
    // Here animal is object of class Animal. 
    Animal animal = Animal();
    animal.name = "Lion";
    animal.numberOfLegs = 4;
    animal.lifeSpan = 10;
    animal.display();

    print("");

    //object of rectangle created
    Rectangle rectangle = Rectangle();
    
    //setting properties for rectangle
    rectangle.length=10;
    rectangle.breadth=5;
    
    //functions of rectangle called
    print("Area of rectangle is ${rectangle.area()}.");

    print("");

    //object of simple interest created
    SimpleInterest simpleInterest = SimpleInterest();
    
    //setting properties for simple interest
    simpleInterest.principal=1000;
    simpleInterest.rate=10;
    simpleInterest.time=2;
    
    //functions of simple interest called
    print("Simple Interest is ${simpleInterest.interest()}.");
}