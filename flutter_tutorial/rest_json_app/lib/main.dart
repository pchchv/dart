import 'package:flutter/material.dart';

void main() {
  runApp(const JSONApp());
}

class JSONApp extends StatelessWidget {
  const JSONApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemsScreen(),
    );
  }
}

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items List'),
      ),
    );
  }
}
