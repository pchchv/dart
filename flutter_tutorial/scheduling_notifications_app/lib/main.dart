import 'package:flutter/material.dart';

void main() {
  runApp(const NotifyApp());
}

class NotifyApp extends StatelessWidget {
  const NotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Notifications App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
