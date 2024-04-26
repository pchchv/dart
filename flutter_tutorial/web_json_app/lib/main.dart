import 'package:flutter/material.dart';

void main() {
  runApp(const JSONReaderApp());
}

class JSONReaderApp extends StatelessWidget {
  const JSONReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSON Reader",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      )
    );
  }
}

class _JsonListViewScreenState extends State {
  @override
  void initState() {
    super.initState();
  }
}
