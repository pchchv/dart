import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'note.dart';

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

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<int> insert(Note note) async {
    final db = await instance.database;
    return await db.insert('notes', note.toMap());
  }

  Future<List<Note>> getNotes() async {
    final db = await instance.database;
    final result = await db.query('notes');

    return result.map((json) => Note.fromMap(json)).toList();
  }
}
