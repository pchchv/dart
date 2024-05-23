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
          title: const Text('IconButton Color Change'),
        ),
        body: const Center(
          child: ColorChangingIconButton(),
        ),
      ),
    );
  }
}

class ColorChangingIconButton extends StatefulWidget {
  const ColorChangingIconButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangingIconButtonState createState() => _ColorChangingIconButtonState();
}

class _ColorChangingIconButtonState extends State<ColorChangingIconButton> {

  @override
  Widget build(BuildContext context) {
  }
}
