// function that returns a future
Future<String> getUserName() async {
    return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

void getData() async{
    String data = await middleFunction();
    print(data);
}

Future<String> middleFunction(){
    return Future.delayed(Duration(seconds:5), ()=> "Hello");
}

// main function
void main() {
    print("Start");
    getUserName().then((value) => print(value));
    print("End");

    print("\n----------------\n");

    print("Start");
    getData();
    print("End");

    print("\n----------------\n");
}