class Animal {
    void eat() {
        print("Animal is eating");
    }
}

class Dog extends Animal {
    @override
    void eat() {
        print("Dog is eating");
    }
}

class Vehicle {
    void run() {
        print("Vehicle is running");
    }
}

class Bus extends Vehicle {
    @override
    void run() {
        print("Bus is running");
    }
}

class Car{
    void power(){
        print("It runs on petrol.");
    }
}

class Honda extends Car {}

class Tesla extends Car{
    @override
    void power(){
        print("It runs on electricity.");
    }
}

class Employee{
    void salary(){
        print("Employee salary is \$1000.");
    }
}

class Manager extends Employee{
    @override
    void salary(){
        print("Manager salary is \$2000.");
    }
}

class Developer extends Employee{
    @override
    void salary(){
        print("Developer salary is \$3000.");
    }
}

void main() {
    Animal animal = Animal();
    animal.eat();

    Dog dog = Dog();
    dog.eat();

    print("\n-------------------\n");

    Vehicle vehicle = Vehicle();
    vehicle.run();

    Bus bus = Bus();
    bus.run();

    print("\n-------------------\n");

    Honda honda=Honda();
    Tesla tesla=Tesla();
  
    honda.power();
    tesla.power();

    print("\n-------------------\n");

    Manager manager=Manager();
    Developer developer=Developer();
  
    manager.salary();
    developer.salary();
}