import 'package:flutter/material.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 2'),
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
