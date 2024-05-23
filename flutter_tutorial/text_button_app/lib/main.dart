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
          title: const Text('TextButton Color Change'),
        ),
        body: const Center(
          child: ColorChangingTextButton(),
        ),
      ),
    );
  }
}

class ColorChangingTextButton extends StatefulWidget {
  const ColorChangingTextButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangingTextButtonState createState() => _ColorChangingTextButtonState();
}

class _ColorChangingTextButtonState extends State<ColorChangingTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text('Press Me'),
    );
  }
}
