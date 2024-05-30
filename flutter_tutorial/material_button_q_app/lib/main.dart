import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button App',
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
  Color _buttonColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _buttonColor = _buttonColor == Colors.blue ? Colors.green : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changing Button'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: _changeColor,
          color: _buttonColor,
          textColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: const Text('Press me'),
        ),
      ),
    );
  }
}
