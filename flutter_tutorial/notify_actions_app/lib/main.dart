import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(const NotifyApp());
}

class NotifyApp extends StatelessWidget {
  const NotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actionable Notifications',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> onSelectNotification(String payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Here is your payload"),
          content: Text("Payload: $payload"),
        );
      },
    );
  }

  Future<void> handleNotificationAction(String actionId, String input) async {
    // Handle the action here
    if (actionId == 'reply') {
      log('User replied: $input');
    } else if (actionId == 'mark_as_read') {
      log('Notification marked as read');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Actionable Notifications"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press the button to receive a notification',
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(onPressed: () {},
      ),
    );
  }
}
