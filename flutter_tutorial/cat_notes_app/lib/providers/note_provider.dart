import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../models/note.dart';

class NoteProvider with ChangeNotifier {
  late Box<Note> _noteBox;

  NoteProvider() {
    _noteBox = Hive.box<Note>('notes');
  }

  List<Note> get notes => _noteBox.values.toList();

  void addNote(Note note) {
    _noteBox.add(note);
    notifyListeners();
  }

  void updateNote(Note note) {
    note.save();
    notifyListeners();
  }

  void deleteNote(Note note) {
    note.delete();
    notifyListeners();
  }
}
