import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ContactCustomForm(),
    );
  }
}

class ContactCustomForm extends StatefulWidget {
  const ContactCustomForm({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _ContactCustomFormState createState() => _ContactCustomFormState();
}

class _ContactCustomFormState extends State<ContactCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
}
