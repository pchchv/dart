import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonHomePage(),
    );
  }
}

class ButtonHomePage extends StatelessWidget {
  const ButtonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Button App'),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {
            const snackBar = SnackBar(content: Text('Button Pressed'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
