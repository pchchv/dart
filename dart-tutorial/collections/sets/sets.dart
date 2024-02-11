void properties() {
    // declaring fruits as Set
    Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};
    
    // using different properties of Set
    print("First Value is ${fruits.first}");
    print("Last Value is ${fruits.last}");
    print("Is fruits empty? ${fruits.isEmpty}");
    print("Is fruits not empty? ${fruits.isNotEmpty}");
    print("The length of fruits is ${fruits.length}");
}

void available() {
    Set<String> fruits = {"Apple", "Orange", "Mango"};
    print(fruits.contains("Mango"));
    print(fruits.contains("Lemon"));
}

void addAndRemove() {
    Set<String> fruits = {"Apple", "Orange", "Mango"};

    fruits.add("Lemon");
    fruits.add("Grape");
    
    print("After Adding Lemon and Grape: $fruits");

    fruits.remove("Apple");
    print("After Removing Apple: $fruits");
}

void multiAdd() {
    Set<int> numbers = {10, 20, 30};
    numbers.addAll([40,50]);
    print("After adding 40 and 50: $numbers");
}

void printAll() {
    Set<String> fruits = {"Apple", "Orange", "Mango"};
    for (String fruit in fruits) {
        print(fruit);
    }
}

void difference() {
    Set<String> fruits1 = {"Apple", "Orange", "Mango"};
    Set<String> fruits2 = {"Apple", "Grapes", "Banana"};
    
    final differenceSet = fruits1.difference(fruits2);
    print(differenceSet);
}

void elementAt() {
    Set<String> days = {"Sunday", "Monday", "Tuesday"};
    // index starts from 0 so 2 means Tuesday
    print(days.elementAt(2));
}

void intersection() {
    Set<String> fruits1 = {"Apple", "Orange", "Mango"};
    Set<String> fruits2 = {"Apple", "Grapes", "Banana"};
    
    final intersectionSet = fruits1.intersection(fruits2);
    print(intersectionSet);
}

void main(){
    Set<String> fruits = {"Apple", "Orange", "Mango"};
    print(fruits);
    print("\n");

    properties();
    print("\n");

    available();
    print("\n");

    addAndRemove();
    print("\n");

    multiAdd();
    print("\n");

    printAll();
    print("\n");

    difference();
    print("\n");

    elementAt();
    print("\n");

    intersection();
}