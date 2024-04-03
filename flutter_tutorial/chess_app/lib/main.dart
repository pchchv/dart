import 'package:flutter/material.dart';

void main() {
  runApp(const ChessApp());
}

class ChessApp extends StatefulWidget {
  const ChessApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChessState createState() => _ChessState();
}

class _ChessState extends State<ChessApp> {
  late Color _color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Chess board')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemCount: 64,
          itemBuilder: (BuildContext context, int index) {
            if (index % 2 == 0) {
              _color = Color(0x00f0d9b5);
            } else {
              _color = Color(0x00b58863);
            }
            return Card(
              color: _color,
            );
          },
        )
      ),
    );
  }
}