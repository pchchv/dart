import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screenA');
              },
              child: const Text('Go to Screen A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screenB');
              },
              child: const Text('Go to Screen B'),
            ),
          ],
        ),
      ),
    );
  }
}
