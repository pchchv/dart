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
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
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
