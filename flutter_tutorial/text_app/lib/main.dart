import 'package:flutter/material.dart';

void main() {
  runApp(const TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView')),
        body: ListView(
          children: const[
            ListTile(
              title: Text("First line"),
            ),
            ListTile(
              title: Text("Second line"),
            ),
            ListTile(
              title: Text("Third line"),
            ),
            ListTile(
              title: Text("Fourth line"),
            ),
            ListTile(
              title: Text("Fifth line"),
            ),
            ListTile(
              title: Text("Sixth line"),
            ),
            ListTile(
              title: Text("Seventh line"),
            ),
            ListTile(
              title: Text("Eighth line"),
            ),
            ListTile(
              title: Text("Ninth line"),
            ),
            ListTile(
              title: Text("Tenth line"),
            ),
          ],
        ),
      ),
    );
  }
}
