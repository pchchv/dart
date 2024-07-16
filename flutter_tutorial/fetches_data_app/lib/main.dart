import 'package:flutter/material.dart';

void main() {
  runApp(const FetchApp());
}

class FetchApp extends StatelessWidget {
  const FetchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
}
