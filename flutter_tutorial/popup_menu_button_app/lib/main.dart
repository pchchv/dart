import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatefulWidget {
  const ButtonApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Popup Menu Button Theme Change'),
          actions: <Widget>[
            ThemePopupMenu(
              onThemeChanged: _changeTheme,
            ),
          ],
        ),
        body: const Center(
          child: Text('Select a theme from the menu'),
        ),
      ),
    );
  }
}

class ThemePopupMenu extends StatelessWidget {
  final ValueChanged<ThemeMode> onThemeChanged;

  const ThemePopupMenu({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ThemeMode>(
      onSelected: (ThemeMode result) {
        onThemeChanged(result);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<ThemeMode>>[
        const PopupMenuItem<ThemeMode>(
          value: ThemeMode.light,
          child: Text('Light'),
        ),
        const PopupMenuItem<ThemeMode>(
          value: ThemeMode.dark,
          child: Text('Dark'),
        ),
        const PopupMenuItem<ThemeMode>(
          value: ThemeMode.system,
          child: Text('System Default'),
        ),
      ],
    );
  }
}
