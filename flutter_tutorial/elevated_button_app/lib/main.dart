import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonHomePage(),
    );
  }
}

class ButtonHomePage extends StatefulWidget {
  const ButtonHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonHomePageState createState() => _ButtonHomePageState();
}

class _ButtonHomePageState extends State<ButtonHomePage> {
  String buttonText = 'Click Me';

  void _changeButtonText() {
    setState(() {
      buttonText = 'Clicked';
    });
    const snackBar = SnackBar(content: Text('Button Pressed'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Text Change App'),
      ),
    );
  }
}
