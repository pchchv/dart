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
  @override
  Widget build(BuildContext context) {
  }
}
