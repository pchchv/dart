import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonsApp());
}

class ButtonsApp extends StatelessWidget {
  const ButtonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Button Demo',
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled Button'),
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
              tooltip: 'Icon Button',
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Floating Action Button',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
