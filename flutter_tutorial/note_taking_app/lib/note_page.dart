import 'package:flutter/material.dart';
import 'note_db_helper.dart';
import 'note.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final TextEditingController _controller = TextEditingController();
  List<Note> _notes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  void _loadNotes() async {
    List<Note> notes = await NoteDbHelper.instance.getNotes();
    setState(() {
      _notes = notes;
    });
  }

  void _addNote() async {
    String content = _controller.text;
    if (content.isEmpty) return;

    Note note = Note(
      id: DateTime.now().millisecondsSinceEpoch,
      content: content,
    );

    await NoteDbHelper.instance.insert(note);
    _controller.clear();
    _loadNotes();
  }

  void _deleteNote(int id) async {
    await NoteDbHelper.instance.delete(id);
    _loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Taking App'),
      ),
      body: const Column(
        children: [
        ],
      ),
    );
  }
}
