void printInfo(String name, String gender) {
    print("Hello $name your gender is $gender.");
}

void printInfo2(String name, String gender, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $gender.");
}

void add(int num1, int num2, [int num3=0]){
    int sum;
    sum = num1 + num2 + num3;
    
    print("The sum is $sum");
}


void main() {
    // passing values in wrong order
    printInfo("Male", "John");
    // passing values in correct order
    printInfo("John", "Male");

    printInfo2("John", "Male");
    printInfo2("John", "Male", "Mr.");
    printInfo2("Kavya", "Female", "Ms.");

    add(10, 20);
    add(10, 20, 30);
}