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
  bool _darkModeEnabled = false;
  bool _notificationsEnabled = false;
  bool _locationTrackingEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _darkModeEnabled ? ThemeData.dark() : ThemeData.light(),
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
            SwitchListTile(
              title: const Text('Enable Dark Mode'),
              value: _darkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Enable Location Tracking'),
              value: _locationTrackingEnabled,
              onChanged: (bool value) {
                setState(() {
                  _locationTrackingEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
