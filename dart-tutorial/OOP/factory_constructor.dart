// enum ShapeType
enum ShapeType {
    circle,
    rectangle
}

class Area {
    final int length;
    final int breadth;
    final int area;

    // private constructor
    const Area._internal(this.length, this.breadth) : area = length * breadth;

    // Factory constructor
    factory Area(int length, int breadth) {
        if (length < 0 || breadth < 0) {
            throw Exception("Length and breadth must be positive");
        }
        // redirect to private constructor
        return Area._internal(length, breadth);
    }
}

class Person {
    String firstName;
    String lastName;

    // constructor
    Person(this.firstName, this.lastName);

    // factory constructor Person.fromMap
    factory Person.fromMap(Map<String, Object> map) {
        final firstName = map['firstName'] as String;
        final lastName = map['lastName'] as String;
        return Person(firstName, lastName);
    }
}

// abstract class Shape
abstract class Shape {
    // factory constructor
    factory Shape(ShapeType type) {
        switch (type) {
            case ShapeType.circle:
            return Circle();
            case ShapeType.rectangle:
            return Rectangle();
            default:
            throw 'Invalid shape type';
        }
    }

    // method
    void draw();
}

class Circle implements Shape {
    // implement draw method
    @override
    void draw() {
        print('Drawing circle');
    }
}

class Rectangle implements Shape {
    // implement draw method
    @override
    void draw() {
        print('Drawing rectangle');
    }
}

class Person2 {
    // final fields
    final String name;

    // private constructor
    Person2._internal(this.name);

    // static _cache field
    static final Map<String, Person2> _cache = <String, Person2>{};

    // factory constructor
    factory Person2(String name) {
        if (_cache.containsKey(name)) {
            return _cache[name]!;
        } else {
            final person = Person2._internal(name);
            _cache[name] = person;
            return person;
        }
    }
}

void main() {
    // This works
    Area area = Area(10, 20);
    print("Area is: ${area.area}");

    /*
    // notice that here is negative value
    Area area2 = Area(-10, 20);
    print("Area is: ${area2.area}");
    */
    
    print("\n-----------\n");

    // create a person object
    final person = Person('John', 'Doe');

    // create a person object from map
    final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

    // print first and last name
    print("From normal constructor: ${person.firstName} ${person.lastName}");
    print("From factory constructor: ${person2.firstName} ${person2.lastName}");

    print("\n-----------\n");

    // create Shape object
    Shape shape = Shape(ShapeType.circle);
    Shape shape2 = Shape(ShapeType.rectangle);
    shape.draw();
    shape2.draw();

    print("\n-----------\n");

    final person3 = Person2('John');
    final person4 = Person2('Harry');
    final person5 = Person2('John');

    // hashcode of person1 and person3 are same
    print("Person1 name is : ${person3.name} with hashcode ${person3.hashCode}");
    print("Person2 name is : ${person4.name} with hashcode ${person4.hashCode}");
    print("Person3 name is : ${person5.name} with hashcode ${person5.hashCode}");
}