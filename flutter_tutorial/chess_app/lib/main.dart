import 'package:flutter/material.dart';

void main() {
  runApp(const ChessApp());
}

class ChessApp extends StatelessWidget {
  const ChessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Photo Gallery')),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemCount: 1,
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