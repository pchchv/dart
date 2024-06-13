import 'package:flutter/material.dart';

void main() {
}

class BarApp extends StatelessWidget {
  const BarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Navigation Bar',
      home: HomeScreen(),
    );
  }
}
