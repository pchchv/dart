import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  void _showSnackbar(BuildContext context) {
    const snackBar = SnackBar(content: Text('ElevatedButton Pressed'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButton Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSnackbar(context),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            padding: const EdgeInsets.all(16.0),
          ),
          child: const Text('Press me'),
        ),
      ),
    );
  }
}