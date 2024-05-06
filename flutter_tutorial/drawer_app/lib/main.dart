import 'package:flutter/material.dart';

void main() {
  runApp(const AccountingApp());
}

class AccountingApp extends StatelessWidget {
  const AccountingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Accounting App'),
        ),
        body: const Center(
          child: Text('Welcome to Accounting App!'),
        ),
      ),
    );
  }
}
