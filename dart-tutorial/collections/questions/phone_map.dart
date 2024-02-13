/// 7. Create a map with name, phone keys and store some values to it.
/// Use where to find all keys that have length 4.

void main() {
    Map<String, String> person = {
        'Name': 'Jack',
        'Phone': '+79686000066',
    };

    person.forEach((key,value)=> key.length == 4 ? print('Key is $key and value is $value') : null);
}