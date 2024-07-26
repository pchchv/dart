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
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<void> showNotification() async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      channelDescription: 'your_channel_description',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      ticker: 'ticker',
      actions: <AndroidNotificationAction>[
        AndroidNotificationAction(
          'mark_as_read',
          'Mark as Read',
        ),
        AndroidNotificationAction(
          'reply',
          'Reply',
        ),
      ],
    );

    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      'New Notification',
      'This is the body of the notification',
      platformChannelSpecifics,
      payload: 'item id 2',
    );
  }

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
