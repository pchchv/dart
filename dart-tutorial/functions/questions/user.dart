/// 11. Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
class User {
    String? name;
    int? age;
    bool? isActive;
}

User createUser(String name, int age, [bool isActive = true]) {
    var user = User();
    user.name = name;
    user.age = age;
    user.isActive == isActive;
    return user;
}

void main() {
    String name = "Jack";
    int age = 30;
    var user = createUser(name, age);
    print(user.name);
}