import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsApp());
}

class SettingsApp extends StatefulWidget {
  const SettingsApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsAppState createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  bool _notificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Settings Page'),
        ),
        body: ListView(
          children: [
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
