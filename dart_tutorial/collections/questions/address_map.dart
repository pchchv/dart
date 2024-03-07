/// 6. Create a map with name, address, age, country keys and store values to it.
/// Update country name to other country and print all keys and values.

void main() {
    Map<String, String> person = {
        'Name': 'Jack',
        'Address': 'Moscow',
        'Age': '30',
        'Country': 'Russia'
    };

    person['Country'] = 'USA';
    for (MapEntry field in person.entries) {
        print("${field.key}: ${field.value}");
    }
}