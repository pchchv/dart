import 'package:flutter/material.dart';

void main() {
}

class LanguageApp extends StatelessWidget {
  final String? preferredLanguage;

  const LanguageApp({super.key, this.preferredLanguage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale(preferredLanguage ?? 'en'),
    );
  }
}
