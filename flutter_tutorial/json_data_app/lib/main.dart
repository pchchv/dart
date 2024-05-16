import 'package:flutter/material.dart';

void main() {
  runApp(const DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Data Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class UserData extends DataTableSource {
  final List<Map<String, dynamic>> _userData;
  UserData(this._userData);
}
