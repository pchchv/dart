import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
  void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) {
    final String? payload = notificationResponse.payload;
    if (notificationResponse.actionId == 'reply') {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text("Reply"),
          content: Text("User selected: Reply"),
        ),
      );
    } else if (notificationResponse.actionId == 'mark_as_read') {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text("Mark as Read"),
          content: Text("Notification marked as read."),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Notification Clicked"),
          content: Text("Payload: $payload"),
        ),
      );
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
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      ),
    );
  }
}
