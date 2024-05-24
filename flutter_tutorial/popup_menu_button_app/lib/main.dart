import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatefulWidget {
  const ButtonApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
