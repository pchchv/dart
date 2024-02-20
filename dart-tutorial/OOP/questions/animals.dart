/// 4. Write a dart program to create a class Animal with properties [id, name, color].
/// Create another class called Cat and extends it from Animal.
/// Add new properties sound in String.
/// Create an object of a Cat and print all details.

class Animal {
    int? id;
    String? name;
    String? color;
}

class Cat extends Animal {
    String? sound;

    void display() {
        print("Id: ${id}");
        print("Name: ${name}");
        print("Color: ${color}");
        print("Sound; ${sound}");
    }
}

void main() {
    Cat cat = Cat();
    cat.id = 1;
    cat.name = "Tom";
    cat.color = "White";
    cat.sound = "Meow";

    cat.display();
}