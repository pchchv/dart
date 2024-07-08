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
      home: const ScoreTracker(),
    );
  }
}

class ScoreTracker extends StatefulWidget {
  const ScoreTracker({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ScoreTrackerState createState() => _ScoreTrackerState();
}

class _ScoreTrackerState extends State<ScoreTracker> {
}
