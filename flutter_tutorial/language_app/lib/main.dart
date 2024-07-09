import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? preferredLanguage = prefs.getString('preferred_language');
  runApp(LanguageApp(preferredLanguage: preferredLanguage));
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
