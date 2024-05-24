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

  final List<String> _daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  void _onDaySelected(String? newDay) {
    setState(() {
      _selectedDay = newDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<String>(
          hint: const Text('Select a day'),
          value: _selectedDay,
          onChanged: _onDaySelected,
          items: _daysOfWeek.map((String day) {
            return DropdownMenuItem<String>(
              value: day,
              child: Text(day),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        Text(
          _selectedDay == null ? 'No day selected' : 'Selected day: $_selectedDay',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
