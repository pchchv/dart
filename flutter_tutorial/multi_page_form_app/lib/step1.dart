import 'package:flutter/material.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 1'),
      ),
      body: const Form(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
          ),
        ),
      ),
    );
  }
}
