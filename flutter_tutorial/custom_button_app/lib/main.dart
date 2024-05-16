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
      body: Center(
        child: CustomButton(
          text: 'Press Me',
          onPressed: () {
            // ignore: avoid_print
            print('Button Pressed!');
          },
        ),
      ),
    ),
  );
  }
}
