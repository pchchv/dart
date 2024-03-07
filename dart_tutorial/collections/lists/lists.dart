// Access item of list.
void access() {
    var list = [210, 21, 22, 33, 44, 55];

    print(list[0]);
    print(list[1]);
    print(list[2]);
    print(list[3]);
    print(list[4]);
    print(list[5]);
}

// Get index by value.
void getIndex() {
    var list = [210, 21, 22, 33, 44, 55];
    
    print(list.indexOf(22));
    print(list.indexOf(33));
}

// Find the length of the list.
void length() {
    List<String> names = ["Raj", "John", "Rocky"];
    print(names.length);
}

// Changing values of list.
void changeValue() {
    List<String> names = ["Raj", "John", "Rocky"];
    print(names);
    names[1] = "Bill";
    names[2] = "Elon";
    print(names);
}


void main() {
    var list = List<int>.filled(5,0); // Fixed length list
    print(list);

    var list1 = [210,21,22,33,44,55]; // Growable list
    print(list1);
    print("");

    access();
    print("");

    getIndex();
    print("");

    length();
    print("");

    changeValue();
    print("");

    List<String> names1 = ["Raj", "John", "Rocky"]; // Mutable List
    names1[1] = "Bill"; // possible
    names1[2] = "Elon"; // possible

    /*
    const List<String> names2 = ["Raj", "John", "Rocky"]; // Immutable List
    names2[1] = "Bill"; // not possible
    names2[2] = "Elon"; // not possible
    */
}