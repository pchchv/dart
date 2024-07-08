import 'package:flutter/material.dart';

void main() {
  runApp(const GameApp());
}

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Score Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
