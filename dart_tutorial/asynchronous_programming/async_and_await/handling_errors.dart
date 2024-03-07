Future<String> middleFunction(){
    return Future.delayed(Duration(seconds:5), ()=> "Hello");
}

void getData() async{
    try{
        String data = await middleFunction();
        print(data);
    } catch(err) {
        print("Some error $err");
    }
}

main() {
    print("Start");
    getData();
    print("End");
}