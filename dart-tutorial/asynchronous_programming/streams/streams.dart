import 'dart:async';

void example1() {
    var controller = StreamController();
    controller.stream.listen((event) {
        print(event);
    });
    controller.add('Hello');
    controller.add(42);
    controller.addError('Error!');
    controller.close();
}

Stream<int> numberOfStream(int number) async* {
    for (int i = 0; i <= number; i++) {
        yield i;
    }
}

void example2(List<String> arguments) {
    // Calling the Stream 
    var stream = numberOfStream(6);
    // Listening to Stream yielding each number
    stream.listen((s) => print(s));
}

Stream<int> str(int n) async* {
    for (var i = 1; i <= n; i++) {
        await Future.delayed(Duration(seconds: 1));
        yield i;
    }
}

void example3() {
    str(10).forEach(print);
}


void main() {
    example1();
    
    example2(["0", "1", "2", "3"]);

    example3();
}