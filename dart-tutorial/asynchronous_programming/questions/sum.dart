/// 6. Write a Dart program to calculate the sum of two numbers using async/await.
Future<int> getSum() async {
    int n1 = await getFirstNum();
    int n2 = await getSecondNum();
    return n1 + n2;
}


Future<int> getFirstNum(){
    return Future.delayed(Duration(seconds:1), ()=> 33);
}

Future<int> getSecondNum(){
    return Future.delayed(Duration(seconds:2), ()=> 333);
}


void main() {
    getSum().then((value) => print("Sum of two numbers is ${value}"));
}