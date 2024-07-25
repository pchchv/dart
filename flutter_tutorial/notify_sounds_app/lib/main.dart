import 'package:flutter/material.dart';

void main() {
  runApp(const NotifyApp());
}

class NotifyApp extends StatelessWidget {
  const NotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Sound Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SoundSelectorPage(),
    );
  }
}

class SoundSelectorPage extends StatefulWidget {
  const SoundSelectorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SoundSelectorPageState createState() => _SoundSelectorPageState();
}

class _SoundSelectorPageState extends State<SoundSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Sounds App"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
