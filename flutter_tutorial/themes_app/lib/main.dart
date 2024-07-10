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
          home: const HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
      ),
      body: Center(
        child: SwitchListTile(
          title: const Text('Dark Mode'),
          onChanged: (value) {
            themeNotifier.toggleTheme();
          },
          value: themeNotifier.darkTheme,
        ),
      ),
    );
  }
}
