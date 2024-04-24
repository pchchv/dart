import 'package:flutter/material.dart';

void main() {
  runApp(const FontApp());
}

class FontApp extends StatelessWidget {
  const FontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: "JetBrainsMono"),
          bodyMedium: TextStyle(fontFamily: "JetBrainsMono"),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Font App", style: TextStyle(fontSize: 24, fontFamily: "JetBrainsMono")),
      ),
      body: const Center(
        child: Text(
          "Hello, world!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
