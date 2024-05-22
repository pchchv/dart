import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
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
  bool _isGreen = true;

  void _toggleColor() {
    setState(() {
      _isGreen = !_isGreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Color Change'),
      ),
      body: const Center(
        child: Text('Press the button to change its color'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleColor,
        backgroundColor: _isGreen ? Colors.green : Colors.red,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
