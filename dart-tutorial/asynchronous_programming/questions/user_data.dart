/// 5. Write a program in dart that uses Future class to perform multiple asynchronous operations, wait for all of them to complete, and then print the results.

Future<String> getUserName() async {
    return Future.delayed(Duration(seconds: 2), () => 'Jack');
}

Future<String> getUserEmail() async {
    return Future.delayed(Duration(seconds: 2), () => 'jack@mail.com');
}

Future<int> getUserAge() async {
    return Future.delayed(Duration(seconds: 2), () => 30);
}

void main() {
    String name = "";
    String email = "";
    int age = 0;

    getUserName().then((value) => name = value);
    getUserEmail().then((value) => email = value);
    getUserAge().then((value) => age = value);

    Future.delayed(Duration(seconds: 2), () => print("User data:\nName: $name\nAge: ${age}\nEmail: $email"));
}