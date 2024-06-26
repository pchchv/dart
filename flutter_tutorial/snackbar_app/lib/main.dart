import 'package:flutter/material.dart';

void main() {
  runApp(const AccountingApp());
}

class AccountingApp extends StatelessWidget {
  const AccountingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AccountingHomePage(),
    );
  }
}

class AccountingHomePage extends StatelessWidget {
  const AccountingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounting App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Account created successfully'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 5),
                ),
              );
            },
          child: const Text('Register'),
        ),
      ),
    );
  }
}
