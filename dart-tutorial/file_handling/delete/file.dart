// dart program to delete file
import 'dart:io';

void deleteFile() {
    // open file
    File file = File('test.txt');
    // delete file
    file.deleteSync();
    print('File deleted.');
}

void deleteFileIfExist() {
  // open file
  File file = File('test.txt');
  // check if file exists
  if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}

void main() {
    deleteFile();
    deleteFileIfExist();
}