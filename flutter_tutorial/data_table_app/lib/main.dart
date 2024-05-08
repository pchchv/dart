import 'package:flutter/material.dart';

void main() {}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product DataTable'),
        )
      ),
    );
  }
}
