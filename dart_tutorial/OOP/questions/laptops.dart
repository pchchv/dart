/// 1. Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.

class Laptop {
    int? id;
    int? ram;   
    String? name;

    void display() {
        print("Id: ${id}");
        print("Name: $name");
        print("Ram: ${ram}");
    }
}

void main() {
   Laptop laptop1 = Laptop();
   laptop1.id = 1;
   laptop1.name = "MacBook";
   laptop1.ram = 64;
   laptop1.display();

   print("");

   Laptop laptop2 = Laptop();
   laptop2.id = 2;
   laptop2.name = "Alienware";
   laptop2.ram = 32;
   laptop2.display();

   print("");

   Laptop laptop3 = Laptop();
   laptop3.id = 3;
   laptop3.name = "Surface";
   laptop3.ram = 16;
   laptop3.display();

   print("");
}