import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'theme_manager.dart';

void main() {
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: themeNotifier.darkTheme ? ThemeData.dark() : ThemeData.light(),
        );
      },
    );
  }
}
