// Access first and last elements of list.
void access() {
    List<String> drinks = ["water", "juice", "milk", "coke"];
    print("First element of the List is: ${drinks.first}");
    print("Last element of the List is: ${drinks.last}");
}

// Check the list is empty or not.
void checkEmpty() {
    List<String> drinks = ["water", "juice", "milk", "coke"];
    List<int>  ages = [];
    print("Is drinks Empty: "+drinks.isEmpty.toString());
    print("Is drinks not Empty: "+drinks.isNotEmpty.toString());
    print("Is ages Empty: "+ages.isEmpty.toString());
    print("Is ages not Empty: "+ages.isNotEmpty.toString());
}

// Reverse list.
void reverse() {
    List<String> drinks = ["water", "juice", "milk", "coke"];
    print("List in reverse: ${drinks.reversed}");
}

void addToEnd() {
    var evenList = [2,4,6,8,10];
    print(evenList);
    
    evenList.add(12); // Add item to end of list
    print(evenList);

    evenList.addAll([14, 16, 18, 20]); // Add items to end of list
    print(evenList);
}

void insertToList() {
    List myList = [3, 4, 2, 5];
    print(myList);

    myList.insert(2, 15); // Insert item to list
    print(myList);

    myList.insertAll(1, [6, 7, 10, 9]); // Insert items to list
    print(myList);
}

// Replace range of list.
void replace() {
    var list = [10, 15, 20, 25, 30];
    print("List before updation: ${list}");

    list.replaceRange(0, 4, [5, 6, 7, 8]);
    print("List after updation using replaceAll() function : ${list}");
}

void removing() {
    var list = [10, 20, 30, 40, 50];
    print("List before removing element : ${list}");
    list.remove(30); // Removing item from list
    print("List after removing element : ${list}");
    print("");
    
    print("List before removing element : ${list}");
    list.removeAt(3);
    print("List after removing element : ${list}");
    print("");

    print("List before removing element:${list}");
    list.removeLast();
    print("List after removing last element:${list}");
    print("");

    list = [10, 20, 30, 40, 50];
    print("List before removing element:${list}");
    list.removeRange(0, 3);
    print("List after removing range element:${list}");
}

void loop() {
    List<int> list = [10, 20, 30, 40, 50];
    list.forEach((n) => print(n));
}

void multiply() {
    List<int> list = [10, 20, 30, 40, 50];
    var douledList = list.map((n) => n * 2);
    
    print((douledList));
}

void combine() {
    List<String> names = ["Raj", "John", "Rocky"];
    List<String> names2 = ["Mike", "Subash", "Mark"];
    
    List<String> allNames = [...names, ...names2];
    print(allNames);
}

void conditions() {
    bool sad = false;
    // ignore: dead_code
    var cart = ['milk', 'ghee', if (sad) 'Beer'];
    print(cart);
}

void where() {
    List<int> numbers = [2,4,6,8,10,11,12,13,14];
    List<int> even = numbers.where((number)=> number.isEven).toList();
    print(even);
}

void main() {
    access();
    print("\n");

    checkEmpty();
    print("\n");

    reverse();
    print("\n");

    addToEnd();
    print("\n");

    insertToList();
    print("\n");

    replace();
    print("\n");

    removing();
    print("\n");

    loop();
    print("\n");

    multiply();
    print("\n");

    combine();
    print("\n");

    conditions();
    print("\n");

    where();
}