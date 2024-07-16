import 'package:flutter/material.dart';

void main() {
  runApp(const FetchApp());
}

class FetchApp extends StatelessWidget {
  const FetchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
