import 'package:flutter/material.dart';

void main() {
  runApp(const NamesApp());
}

class NamesApp extends StatelessWidget {
  const NamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NamesHomePage(),
    );
  }
}

class NamesHomePage extends StatefulWidget {
  const NamesHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NamesHomePageState createState() => _NamesHomePageState();
}

class _NamesHomePageState extends State<NamesHomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  String? _validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
                validator: _validateField,
              ),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
                validator: _validateField,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
