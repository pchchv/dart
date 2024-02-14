// dart program to write to file
import 'dart:io';

void add() {
    // open file
    File file =  File('test.txt');
    // write to file
    file.writeAsStringSync('\nThis is a new content.', mode: FileMode.append);
    print('Congratulations!! New content is added on top of previous content.');
}


void main() {
    // open file
    File file = File('test.txt');
    // write to file
    file.writeAsStringSync('Welcome to test.txt file.');
    print('File written.');

    add();
}
