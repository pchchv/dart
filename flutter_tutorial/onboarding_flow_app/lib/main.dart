import 'package:flutter/material.dart';

void main() {
  runApp(const OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Onboarding App',
    );
  }
}
