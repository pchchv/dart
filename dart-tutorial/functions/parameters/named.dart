void printInfo({String? name, String? gender}) {
    print("Hello $name your gender is $gender.");
}

void printInfo2({required String name, required String gender}) {
    print("Hello $name your gender is $gender.");
}

void main() {
    // you can pass values in any order in named parameters.
    printInfo(gender: "Male", name: "John");
    printInfo(name: "Sita", gender: "Female");
    printInfo(name: "Reecha", gender: "Female");
    printInfo(name: "Reecha", gender: "Female");
    printInfo(name: "Harry", gender: "Male");
    printInfo(gender: "Male", name: "Santa");

    // you can pass values in any order in named parameters.
    printInfo(gender: "Male", name: "John");
    printInfo(gender: "Female", name: "Suju");
}