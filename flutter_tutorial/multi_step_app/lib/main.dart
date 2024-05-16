import 'package:flutter/material.dart';

void main() {
  runApp(const MultiStepApp());
}

class MultiStepApp extends StatelessWidget {
  const MultiStepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-step Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MultiStepForm(),
    );
  }
}

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  final PageController _pageController = PageController(initialPage: 0);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  
  void _submitForm() {
    // You can perform form validation and submit data here
    String name = _nameController.text;
    String email = _emailController.text;

    // For demonstration, just print the data
    // ignore: avoid_print
    print('Name: $name');
    // ignore: avoid_print
    print('Email: $email');

    // Reset the form after submission
    _nameController.clear();
    _emailController.clear();

    // Navigate to the first page after submission
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi-step Form'),
      ),
    );
  }
}
