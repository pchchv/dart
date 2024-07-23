import 'package:flutter/material.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Column(
        children: <Widget>[
        ],
      ),
    );
  }
}
