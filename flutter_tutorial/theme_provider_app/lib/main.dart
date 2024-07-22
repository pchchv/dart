import 'theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
}

class ThemesApp extends StatelessWidget {
  const ThemesApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      theme: themeNotifier.currentTheme,
    );
  }
}
