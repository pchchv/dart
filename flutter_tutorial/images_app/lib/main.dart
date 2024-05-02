import 'package:flutter/material.dart';

void main() {
  runApp(const ImagesApp());
}

class ImagesApp extends StatelessWidget {
  const ImagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Grid"),
        ),
      ),
    );
  }
}
