import 'package:flutter/material.dart';

void main() {
  runApp(const IndexApp());
}

class IndexApp extends StatelessWidget {
  const IndexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView with AlertDialog",
    );
  }
}
