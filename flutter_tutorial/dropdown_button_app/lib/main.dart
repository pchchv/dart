import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Days app'),
        ),
        body: const Center(
          child: DaySelector(),
        ),
      ),
    );
  }
}

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DaySelectorState createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  String? _selectedDay;

  void _onDaySelected(String? newDay) {
    setState(() {
      _selectedDay = newDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center
    );
  }
}
