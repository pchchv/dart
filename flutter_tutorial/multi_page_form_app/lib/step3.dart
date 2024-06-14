import 'package:flutter/material.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 3'),
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
