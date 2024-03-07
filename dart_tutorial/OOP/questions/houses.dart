/// 2. Write a dart program to create a class House with properties [id, name, price].
/// Create a constructor of it and create 3 objects of it.
/// Add them to the list and print all details.

class House {
    int? id;
    int? price;
    String? name;

    // Constructor
    House(String name, int id, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    void dysplay() {
        print("Id: ${id}");
        print("Name: ${name}");
        print("Price: ${price}");
    }
}

void main() {
    List<House> houses = [];
    House house1 = House("Privet alley", 1011, 1250750);
    houses.add(house1);

    House house2 = House("Ivy rd.", 1, 785500);
    houses.add(house2);

    House house3 = House("33rd Ave.", 33, 2500000);
    houses.add(house3);

    for (House house in houses) {
        house.dysplay();
        print("");
    }
}