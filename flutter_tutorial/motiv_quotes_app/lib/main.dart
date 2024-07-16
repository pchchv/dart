import 'package:flutter/material.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivational Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
