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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Photo Gallery')),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
            itemCount: 64,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              );
            },
          )),
    );
  }
}