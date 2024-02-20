// Using Generics
class Data<T> {
    T data;
    Data(this.data);
}

// Dart implementation of Map class
abstract class Map<K, V> {
  // code
  external factory Map();
}

void main() {
    // create an object of type int and double
    Data<int> intData = Data<int>(10);
    Data<double> doubleData = Data<double>(10.5);

    // print the data
    print("IntData: ${intData.data}");
    print("DoubleData: ${doubleData.data}");

    print("\n-------------------\n");

    final info = {
        "name": "John",
        "age": 20,
        "height": 5.5,
    };
    
    print("info: ${info}");
}