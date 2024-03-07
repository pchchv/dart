// Convert maps keys & values to list.
void convertToList() {
    Map<String, double> expenses = {
        'sun': 3000.0,
        'mon': 3000.0,
        'tue': 3234.0,
    };
    
    // Without List
    print("All keys of Map: ${expenses.keys}");
    print("All values of Map: ${expenses.values}");
    
    // With List
    print("All keys of Map with List: ${expenses.keys.toList()}");
    print("All values of Map with List: ${expenses.values.toList()}");
}

// Check map contains specific key/value
void check() {
    Map<String, double> expenses = {
        'sun': 3000.0,
        'mon': 3000.0,
        'tue': 3234.0,
    };
    
    // For Keys
    print("Does Map contain key sun: ${expenses.containsKey("sun")}");
    print("Does Map contain key abc: ${expenses.containsKey("abc")}");
    
    // For Values
    print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}");
    print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}");
}

// Removing items from map.
void remove() {
    Map<String, String> countryCapital = {
        'USA': 'Nothing',
        'India': 'New Delhi',
        'China': 'Beijing'
    };
    
    countryCapital.remove("USA");
    print(countryCapital);
}

// Looping over element of map.
void loop() {
    Map<String, dynamic> book = {
        'title': 'Misson Mangal',
        'author': 'Kuber Singh',
        'page': 233
    };
    
    // Loop through map
    for (MapEntry book in book.entries) {
        print('Key is ${book.key}, value ${book.value}');
    }
}

// Looping in map using for each.
void loopFor() {
    Map<String, dynamic> book = {
        'title': 'Misson Mangal',
        'author': 'Kuber Singh',
        'page': 233
    };
    
    // Loop through for each
    book.forEach((key,value)=> print('Key is $key and value is $value'));
}

// Remove where in dart map.
void removeWhere() {
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
    convertToList();
    print("\n");

    check();
    print("\n");

    remove();
    print("\n");

    loop();
    print("\n");

    loopFor();
    print("\n");

    removeWhere();
}