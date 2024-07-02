import 'package:sqflite/sqflite.dart';
class NoteDbHelper {
  static final NoteDbHelper instance = NoteDbHelper._init();
  static Database? _database;

  NoteDbHelper._init();

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE notes (
      id INTEGER PRIMARY KEY,
      content TEXT NOT NULL
    )
    ''');
  }
}
