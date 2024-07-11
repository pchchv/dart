import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingHomePage(),
    );
  }
}

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShoppingHomePageState createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
}
