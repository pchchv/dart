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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Dashboard'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Invoices'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Payments'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Expenses'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Welcome to Accounting App!'),
        ),
      ),
    );
  }
}
