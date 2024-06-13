import 'package:flutter/material.dart';
import 'app_drawer.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      drawer: const AppDrawer(), // Add the Drawer here
      body: const Center(
        child: Text('Welcome to Screen B!'),
      ),
    );
  }
}
