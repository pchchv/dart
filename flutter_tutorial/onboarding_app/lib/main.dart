import 'package:flutter/material.dart';

void main() async {
  runApp(OnboardingApp(seenOnboarding: seenOnboarding));
}

class OnboardingApp extends StatelessWidget {
  final bool seenOnboarding;

  const OnboardingApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
