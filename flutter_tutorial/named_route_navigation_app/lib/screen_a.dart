import 'package:flutter/material.dart';
import 'app_drawer.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
      ),
      drawer: const AppDrawer(), // Add the Drawer here
      body: const Center(
        child: Text('Welcome to Screen A!'),
      ),
    );
  }
}
