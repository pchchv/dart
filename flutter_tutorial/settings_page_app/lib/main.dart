import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'settings_page.dart';

void main() {
  runApp(const SettingsApp());
}

class SettingsApp extends StatelessWidget {
  const SettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final prefs = snapshot.data as SharedPreferences;
          final isDarkMode = prefs.getBool('isDarkMode') ?? false;
          return MaterialApp(
            theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
            home: const SettingsPage(),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
