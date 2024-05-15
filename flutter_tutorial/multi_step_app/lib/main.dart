import 'package:flutter/material.dart';

void main() {
  runApp(const MultiStepApp());
}

class MultiStepApp extends StatelessWidget {
  const MultiStepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-step Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
