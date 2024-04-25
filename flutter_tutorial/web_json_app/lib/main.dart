import 'package:flutter/material.dart';

void main() {}

class JSONReaderApp extends StatelessWidget {
  const JSONReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSON Reader",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
    );
  }
}