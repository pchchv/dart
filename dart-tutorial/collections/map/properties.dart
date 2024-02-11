// Adding element to map.
void add() {
    Map<String, String> countryCapital = {
      'USA': 'Washington, D.C.',
      'India': 'New Delhi',
      'China': 'Beijing'
    };

    countryCapital['Japan'] = 'Tokio';
    print(countryCapital);
}

// Updating an element of map.
void update() {
    Map<String, String> countryCapital = {
        'USA': 'Nothing',
        'India': 'New Delhi',
        'China': 'Beijing'
    };
    
    countryCapital['USA'] = 'Washington, D.C.';
    print(countryCapital);
}


void main() {
    Map<String, double> expenses = {
        'sun': 3000.0,
        'mon': 3000.0,
        'tue': 3234.0,
    };
    
    print("All keys of Map: ${expenses.keys}");
    print("All values of Map: ${expenses.values}");
    print("Is Map empty: ${expenses.isEmpty}");
    print("Is Map not empty: ${expenses.isNotEmpty}");
    print("Length of map is: ${expenses.length}");
    print("\n");

    add();
    print("\n");

    update();
}
