import 'package:flutter/material.dart';

void main() {
  runApp(const ColorScreenApp());
}

class ColorScreenApp extends StatelessWidget {
  const ColorScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Color Selection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
