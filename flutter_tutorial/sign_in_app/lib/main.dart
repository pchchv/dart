import 'package:flutter/material.dart';

void main() {
  runApp(const SignApp());
}

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In/Sign Up Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInSignUpScreen(),
    );
  }
}

class SignInSignUpScreen extends StatefulWidget {
  const SignInSignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInSignUpScreenState createState() => _SignInSignUpScreenState();
}

class _SignInSignUpScreenState extends State<SignInSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In / Sign Up'),
      ),
}
