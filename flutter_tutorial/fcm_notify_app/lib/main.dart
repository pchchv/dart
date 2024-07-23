import 'package:flutter/material.dart';

void main() async {
}

class NotifyApp extends StatelessWidget {
  const NotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PushNotificationDemo(),
    );
  }
}

class PushNotificationDemo extends StatefulWidget {
  const PushNotificationDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PushNotificationDemoState createState() => _PushNotificationDemoState();
}

class _PushNotificationDemoState extends State<PushNotificationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Push Notification Demo')),
      body: const Center(child: Text('Listening for notifications...')),
    );
  }
}
