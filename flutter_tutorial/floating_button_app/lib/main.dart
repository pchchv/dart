import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonHomePage(),
    );
  }
}

class ButtonHomePage extends StatefulWidget {
  const ButtonHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonHomePageState createState() => _ButtonHomePageState();
}

class _ButtonHomePageState extends State<ButtonHomePage> {
}
