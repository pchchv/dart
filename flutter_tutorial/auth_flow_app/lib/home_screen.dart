import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (reason) async {
        // Prevent the back button from navigating back to the login screen
        return Future.value();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center(
          child: Text('Welcome to the Home Screen!'),
        ),
      ),
    );
  }
}
