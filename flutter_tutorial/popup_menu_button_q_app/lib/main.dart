import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PopupMenuButton App'),
        ),
        body: const Center(
          child: PopupMenuButtonExample(),
        ),
      ),
    );
  }
}

class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PopupMenuButtonExampleState createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  void _handleMenuItemClick(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected: $value'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ();
  }
}
