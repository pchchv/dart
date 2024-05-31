import 'package:flutter/material.dart';

void main() {
  runApp(const CheckBoxApp());
}

class CheckBoxApp extends StatelessWidget {
  const CheckBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Select languages'),
        ),
        body: const LanguagesScreen(),
      ),
    );
  }
}

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  List<String> selectedlanguages = [];
  List<String> languages = [
    'Dart',
    'Python',
    'Java',
    'JavaScript',
    'C++',
    'C#',
    'Ruby',
    'Go',
    'Swift',
    'Kotlin',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
