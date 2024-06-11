import 'package:flutter/material.dart';

void main() {
  runApp(const ScreenApp());
}

class ScreenApp extends StatelessWidget {
  const ScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
