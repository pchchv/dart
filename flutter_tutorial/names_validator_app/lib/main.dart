import 'package:flutter/material.dart';

void main() {
  runApp(const NamesApp());
}

class NamesApp extends StatelessWidget {
  const NamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NamesHomePage(),
    );
  }
}

class NamesHomePage extends StatefulWidget {
  const NamesHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NamesHomePageState createState() => _NamesHomePageState();
}

class _NamesHomePageState extends State<NamesHomePage> {
  final TextEditingController _firstNameController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation Demo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
