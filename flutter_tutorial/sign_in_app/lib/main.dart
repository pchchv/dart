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
    );
  }
}

class SignInSignUpScreen extends StatefulWidget {
}

class _SignInSignUpScreenState extends State<SignInSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In / Sign Up'),
      ),
}
