import 'dart:math';

int? returnNullButSometimesNot() {
    return -5;
}

int findLength(String? name) {
    // add null assertion operator here
    return name!.length;
}

class DataProvider{
    String? get stringorNull => Random().nextBool() ? "Hello" : null;

    void myMethod(){
      String? val = stringorNull;
        if (val is String) {
            print("The length of value is ${val.length}");
        } else {
            print("The value is not string.");
        }
    }
}

class Person{
    late String _name;

    void setName(String name){
        _name = name;
    }

    String get name => _name;
}

// Try to assign a null value to age variable using ?
void exercise1() {
    int? age;
    age = null;
    print("Age is $age");
}

// Try to make the type parameter of List nullable
void exercise2() {
    List<int?> items = [1, 2, null, 4];
    print(items);
}

// Try to use null assertion operator(!) to print null if the variable is null
void exercise3() {
    String? name;
    name = null;
    String name1 = name!;
    print(name1);
}

// Try to use null assertion operator(!) to print null if the variable is null
void exercise4() {
    List<int?> items = [1, 2, null, 4];
 
    int firstItem = items.first!;
  
    print(firstItem);
}

// Try to use null assertion operator(!) to print null if the variable is null
void exercise5() {
    int result = returnNullButSometimesNot()!.abs();
    print(result);
}

// Try to use null assertion operator(!) to print the length of the String or return null if the variable is null
void exercise6() {
    int? length = findLength("Hello");
    print("The length of the string is $length");
}

// Try to use null coalescing operator(??) to assign a default value to Stranger if it is null
void exercise7() {
    String? name;
    name = null;
    String name1 = name ?? "Stranger";
    print(name1);
}

// Try to solve the error using type promotion
void exercise8() {
    Object name = "Mark";
    if(name is String) {
        print("The length of name is ${name.length}");
    }
}

// Try to solve the error using type promotion
void exercise9() {
    DataProvider().myMethod();
}

// Try to solve the error using late keyword
void exercise10() {
    Person person = Person();
    person.setName("Mark");
    print(person.name);
}

void main() {
    exercise1();
    exercise2();
    exercise3();
    exercise4();
    exercise5();
    exercise6();
    exercise7();
    exercise8();
    exercise9();
    exercise10();
}