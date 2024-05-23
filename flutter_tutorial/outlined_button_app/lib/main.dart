import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OutlinedButton Border Color Change'),
        ),
        body: const Center(
          child: ColorChangingOutlinedButton(),
        ),
      ),
    );
  }
}

class ColorChangingOutlinedButton extends StatefulWidget {
  const ColorChangingOutlinedButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangingOutlinedButtonState createState() => _ColorChangingOutlinedButtonState();
}

class _ColorChangingOutlinedButtonState extends State<ColorChangingOutlinedButton> {
  bool _isPressed = false;

  void _toggleBorderColor() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: _toggleBorderColor,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.blue),
      ),
      child: const Text('Press Me'),
    );
  }
}
