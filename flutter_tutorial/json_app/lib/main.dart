import 'package:flutter/material.dart';

void main() {
  runApp(const JSONApp());
}

class JSONApp extends StatelessWidget {
  const JSONApp({super.key});

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
