// dart program to read from file
import 'dart:io';

void main() {
    // creating file object
    File file = File('test.txt'); // throws an exception when running via vscode
    // read file
    String contents = file.readAsStringSync();
    // print file
    print(contents);
    print("\n------------\n");
    // get file location
    print("File path: ${file.path}");
    // get absolute path
    print("File absolute path: ${file.absolute.path}");
    // get file size
    print("File size: ${file.lengthSync()} bytes");
    // get last modified time
    print("Last modified: ${file.lastModifiedSync()}");
    print("\n------------\n");
    // read only first 10 characters
    contents = file.readAsStringSync().substring(0, 10);
    // print file
    print(contents);
}