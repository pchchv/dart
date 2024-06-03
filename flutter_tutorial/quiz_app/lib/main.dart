import 'package:flutter/material.dart';
import 'quiz_data.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _score = 0;
  int? _selectedOptionIndex;
  int _currentQuestionIndex = 0;
  final List<Question> _questions = getQuestions();

  void _nextQuestion() {
    if (_selectedOptionIndex == _questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++;
    }

    setState(() {
      _currentQuestionIndex++;
      _selectedOptionIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
