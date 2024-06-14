import 'package:flutter/material.dart';

void main() {
  runApp(const InterfaceApp());
}

class InterfaceApp extends StatelessWidget {
  const InterfaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master-Detail App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
