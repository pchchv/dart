import 'package:shared_preferences/shared_preferences.dart';
import 'package:pedometer/pedometer.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Stream<StepCount> _stepCountStream;
  int _stepCount = 0;

  @override
  void initState() {
    super.initState();
    _loadStepCount();
    _initializePedometer();
  }

  void _loadStepCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _stepCount = prefs.getInt('stepCount') ?? 0;
    });
  }

  void _saveStepCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('stepCount', _stepCount);
  }

  void _initializePedometer() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen((StepCount event) {
      setState(() {
        _stepCount += event.steps;
        _saveStepCount();
      });
    }).onError((error) {
      log('Error: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Steps Taken:', style: TextStyle(fontSize: 24)),
            Text('$_stepCount', style: const TextStyle(fontSize: 48)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _stepCount = 0;
                  _saveStepCount();
                });
              },
              child: const Text('Reset Steps'),
            ),
          ],
        ),
      ),
    );
  }
}
