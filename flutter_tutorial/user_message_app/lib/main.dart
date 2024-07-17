import 'package:flutter/material.dart';

void main() {
  runApp(const MessageApp());
}

class MessageApp extends StatelessWidget {
  const MessageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form Example'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}
