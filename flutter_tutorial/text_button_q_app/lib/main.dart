import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toggle TextButton Example'),
        ),
        body: const Center(
          child: ToggleButton(),
        ),
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _isEnabled = true;

  void _toggleButton() {
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return () {};
  }
}