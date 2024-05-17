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
  bool _isSignIn = true;

  void _toggleForm() {
    setState(() {
      _isSignIn = !_isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In / Sign Up'),
      ),
    );
  }

  Widget _buildSignInForm() {
    return Column(
      key: const ValueKey('signIn'),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Sign In',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sign In'),
        ),
        TextButton(
          onPressed: _toggleForm,
          child: const Text('Don\'t have an account? Sign Up'),
        ),
      ],
    );
  }

  Widget _buildSignUpForm() {
    return Column(
      key: const ValueKey('signUp'),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Sign Up',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sign Up'),
        ),
        TextButton(
          onPressed: _toggleForm,
          child: const Text('Already have an account? Sign In'),
        ),
      ],
    );
  }
}
