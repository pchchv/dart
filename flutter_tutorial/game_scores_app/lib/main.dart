import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final TextEditingController _scoreController = TextEditingController();
  List<int> _highScores = [];

  @override
  void initState() {
    super.initState();
    _loadHighScores();
  }

  _loadHighScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _highScores = (prefs.getStringList('highScores') ?? [])
          .map((score) => int.parse(score))
          .toList();
    });
  }

  _addScore(int score) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _highScores.add(score);
      _highScores.sort((b, a) => a.compareTo(b));
      prefs.setStringList(
          'highScores', _highScores.map((score) => score.toString()).toList());
    });
  }

  _clearScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _highScores.clear();
      prefs.remove('highScores');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Score Tracker'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _scoreController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter your score'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_scoreController.text.isNotEmpty) {
                  int score = int.parse(_scoreController.text);
                  _addScore(score);
                  _scoreController.clear();
                }
              },
              child: const Text('Add Score'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clearScores,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Clear Scores'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
