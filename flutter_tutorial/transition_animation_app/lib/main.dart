import 'package:flutter/material.dart';

void main() {
  runApp(const ScreensApp());
}

class ScreensApp extends StatelessWidget {
  const ScreensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Transition App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
    );
  }
}
