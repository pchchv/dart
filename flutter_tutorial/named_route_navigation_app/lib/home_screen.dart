import 'package:flutter/material.dart';
import 'app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const AppDrawer(), // Add the Drawer here
      body: const Center(
        child: Text('Welcome to Home Screen!'),
      ),
    );
  }
}