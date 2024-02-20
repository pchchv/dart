abstract class Vehicle {
    // Abstract method
    void start();
    // Abstract method
    void stop();
}

class Car extends Vehicle {
    // Implementation of start()
    @override
    void start() {
        print('Car started');
    }

    // Implementation of stop()
    @override
    void stop() {
        print('Car stopped');
    }
}

class Bike extends Vehicle {
    // Implementation of start()
    @override
    void start() {
        print('Bike started');
    }

    // Implementation of stop()
    @override
    void stop() {
        print('Bike stopped');
    }
}

abstract class Shape {
    int dim1, dim2;
    // Constructor
    Shape(this.dim1, this.dim2);
    // Abstract method
    void area();
}

class Rectangle extends Shape {
    // Constructor
    Rectangle(int dim1, int dim2) : super(dim1, dim2);

    // Implementation of area()
    @override
    void area() {
        print('The area of the rectangle is ${dim1 * dim2}');
    }
}

class Triangle extends Shape {
    // Constructor
    Triangle(int dim1, int dim2) : super(dim1, dim2);

    // Implementation of area()
    @override
    void area() {
        print('The area of the triangle is ${0.5 * dim1 * dim2}');
    }
}

void main() {
    Car car = Car();
    car.start();
    car.stop();

    Bike bike = Bike();
    bike.start();
    bike.stop();

    print("\n-------------------\n");

    Rectangle rectangle = Rectangle(10, 20);
    rectangle.area();

    Triangle triangle = Triangle(10, 20);
    triangle.area();
}