import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Content')),
      body: const Center(
        child: Text('This is the main content of the app.'),
      ),
    );
  }
}
