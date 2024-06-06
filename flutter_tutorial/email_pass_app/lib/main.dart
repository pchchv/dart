import 'package:flutter/material.dart';

void main() {
  runApp(const FormApp());
}

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormHomePage(),
    );
  }
}

class FormHomePage extends StatefulWidget {
  const FormHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormHomePageState createState() => _FormHomePageState();
}

class _FormHomePageState extends State<FormHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation Demo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
