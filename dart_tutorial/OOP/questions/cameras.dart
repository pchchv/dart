/// 5. Write a dart program to create a class Camera with private properties [id, brand, color, price].
/// Create a getter and setter to get and set values.
/// Also, create 3 objects of it and print all details.

class Camera {
    int? _id;
    int? _price;
    String? _brand;
    String? _color;

    int getId() {
        return _id!;
    }

    void setId(int id) {
        this._id = id;
    }

    int getPrice() {
        return _price!;
    }

    void setPrice(int price) {
        this._price = price;
    }

    String getBrand() {
        return _brand!;
    }

    void setBrand(String brand) {
        this._brand = brand;
    }

    String getColor() {
        return _color!;
    }

    void setColor(String color) {
        this._color = color;
    }
}

void display(Camera camera) {
    print("Id: ${camera.getId()}");
    print("Brand: ${camera.getBrand()}");
    print("Color: ${camera.getColor()}");
    print("Price: ${camera.getPrice()}");
}

void main() {
    Camera camera1 = Camera();
    camera1.setId(1);
    camera1.setPrice(355);
    camera1.setBrand("Canon");
    camera1.setColor("Black");
    display(camera1);
    print("");

    Camera camera2 = Camera();
    camera2.setId(2);
    camera2.setPrice(537);
    camera2.setBrand("Sony");
    camera2.setColor("Metalic");
    display(camera2);
    print("");

    Camera camera3 = Camera();
    camera3.setId(3);
    camera3.setPrice(782);
    camera3.setBrand("Panasonic");
    camera3.setColor("Black");
    display(camera3);
}