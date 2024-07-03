import 'package:flutter/material.dart';

void main() {
  runApp(const StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StopwatchHomePage(),
    );
  }
}

class StopwatchHomePage extends StatefulWidget {
  const StopwatchHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StopwatchHomePageState createState() => _StopwatchHomePageState();
}

class _StopwatchHomePageState extends State<StopwatchHomePage> {
}
