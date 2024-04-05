import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView')),
        body: ListView(
          children: const [
            ListTile(
              title: Text('Go to Gym'),
              subtitle: Text('Go to Gym at 6:00 AM'),
            ),
            ListTile(
              title: Text('Go to College'),
              subtitle: Text('Go to College at 8:00 AM'),
            ),
            ListTile(
              title: Text('Go to Office'),
              subtitle: Text('Go to Office at 11:00 AM'),
            ),
          ],
        ),
      ),
    );
  }
}
