// function that returns a stream
Stream<String> getUserName() async* {
    await Future.delayed(Duration(seconds: 1));
    yield 'Mark';
    await Future.delayed(Duration(seconds: 1));
    yield 'John';
    await Future.delayed(Duration(seconds: 1));
    yield 'Smith';
}

// function that returns a stream
Stream<String> getUserName2() {
    return Stream.fromIterable(['Mark', 'John', 'Smith']);
}