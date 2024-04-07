import 'package:flutter/material.dart';

void main() => runApp(const NumListApp());

class NumListApp extends StatelessWidget {
  const NumListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Numbers List App")),
        body: ListView.builder (
          itemCount: 50,
          itemBuilder: (BuildContext ctxt, int index) {
            return Text(index.toString());
          }
        )
      ),
    );
  }
}
