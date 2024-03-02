void getData() {
    Future<String> data = middleFunction();
    print(data);
}

Future<String> middleFunction(){
    return Future.delayed(Duration(seconds:5), ()=> "Hello");
}

void main() {
    print("Start");
    getData();
    print("End");
}
