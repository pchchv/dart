// Define generic class with bounded type
class Data<T extends num> {
    T data;
    Data(this.data);
}

// Define generic method
double getAverage<T extends num>(T value1, T value2) {
    return (value1 + value2) / 2;
}

void main() {
    // create an object of type int and double
    Data<int> intData = Data<int>(10);
    Data<double> doubleData = Data<double>(10.5);
    // print the data
    print("IntData: ${intData.data}");
    print("DoubleData: ${doubleData.data}");
    // Not Possible
    // Data<String> stringData = Data<String>("Hello");

    print("\n-------------------\n");

    // call the generic method
    print("Average of int: ${getAverage<int>(10, 20)}");
    print("Average of double: ${getAverage<double>(10.5, 20.5)}");
}
