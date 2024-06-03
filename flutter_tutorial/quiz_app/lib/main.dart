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
    if (_currentQuestionIndex >= _questions.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Center(
          child: Text(
            'Your score is $_score/${_questions.length}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      );
    }

    Question currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentQuestion.questionText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              return RadioListTile<int>(
                title: Text(option),
                value: index,
                groupValue: _selectedOptionIndex,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOptionIndex = value;
                  });
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
