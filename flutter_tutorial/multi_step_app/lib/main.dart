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
      home: const MultiStepForm(),
    );
  }
}

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
}
