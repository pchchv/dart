import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Interest Calculator',
      home: InterestCalculatorScreen(),
    );
  }
}

class InterestCalculatorScreen extends StatefulWidget {
  const InterestCalculatorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InterestCalculatorScreenState createState() => _InterestCalculatorScreenState();
}

class _InterestCalculatorScreenState extends State<InterestCalculatorScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest Calculator')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
          children: [
          ],
        ),
      ),
    );
  }
}
