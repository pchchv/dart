import 'package:flutter/material.dart';

void main() {
  runApp(const CacheApp());
}

class CacheApp extends StatelessWidget {
  const CacheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cached Image App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
    );
  }
}
