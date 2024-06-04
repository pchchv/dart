import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const AgeCalculatorApp());
}

class AgeCalculatorApp extends StatelessWidget {
  const AgeCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AgeCalculatorPage(),
    );
  }
}

class AgeCalculatorPage extends StatefulWidget {
  const AgeCalculatorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgeCalculatorPageState createState() => _AgeCalculatorPageState();
}

class _AgeCalculatorPageState extends State<AgeCalculatorPage> {
  DateTime? _selectedDate;
  String _age = '';

  String _calculateAge(DateTime birthDate) {
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month || (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age.toString();
  }
  
  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _age = _calculateAge(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _selectedDate == null
                  ? 'No date selected'
                  : 'Selected Date: ${DateFormat.yMd().format(_selectedDate!)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              _age.isEmpty ? 'Your age will be displayed here' : 'Your age is: $_age',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
