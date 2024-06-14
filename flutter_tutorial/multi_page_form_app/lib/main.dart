import 'package:flutter/material.dart';

void main() {
  runApp(const PagesApp());
}

class PagesApp extends StatelessWidget {
  const PagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Page Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
