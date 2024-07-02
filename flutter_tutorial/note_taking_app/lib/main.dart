import 'package:flutter/material.dart';
import 'note_page.dart';

void main() {
  runApp(const NoteTakingApp());
}

class NoteTakingApp extends StatelessWidget {
  const NoteTakingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Taking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NotePage(),
    );
  }
}
