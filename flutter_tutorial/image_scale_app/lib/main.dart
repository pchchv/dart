import 'package:flutter/material.dart';

void main() {
  runApp(const ScaleApp());
}

class ScaleApp extends StatelessWidget {
  const ScaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaleHomePage(),
    );
  }
}

class ScaleHomePage extends StatelessWidget {
  const ScaleHomePage({super.key});
}
