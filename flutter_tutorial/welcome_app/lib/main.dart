import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome App',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      home: Scaffold(
        body: Container(
          color: Colors.yellowAccent,
          alignment: Alignment.center,
          child: const Text('Welcome to Flutter', style: TextStyle(fontSize: 24, color: Colors.blueAccent))
          ),
        ),
      );
  }
}