void odd() {
    List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
    
    List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();
    print(oddNumbers);
}

void sDays() {
    List<String> days = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday"
    ];
    
    List<String> startWithS = days.where((element) => element.startsWith("S")).toList();
    print(startWithS);
}

void inMap() {
    Map<String, double> mathMarks = {
        "ram": 30,
        "mark": 32,
        "harry": 88,
        "raj": 69,
        "john": 15,
    };
    
    mathMarks.removeWhere((key, value) => value < 32);
    print(mathMarks);
}

void main() {
    odd();
    print("\n");

    sDays();
    print("\n");

    inMap();
}