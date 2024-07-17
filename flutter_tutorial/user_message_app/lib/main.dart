import 'package:flutter/material.dart';

void main() {
  runApp(const MessageApp());
}

class MessageApp extends StatelessWidget {
  const MessageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
