import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NotifyApp());
}

class NotifyApp extends StatelessWidget {
  const NotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Sound Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SoundSelectorPage(),
    );
  }
}

class SoundSelectorPage extends StatefulWidget {
  const SoundSelectorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SoundSelectorPageState createState() => _SoundSelectorPageState();
}

class _SoundSelectorPageState extends State<SoundSelectorPage> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<void> _showNotification(String soundPath) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your_channel_id', 'your_channel_name',
        importance: Importance.max,
        priority: Priority.high,
        // ignore: unnecessary_null_comparison
        sound: soundPath != null ? RawResourceAndroidNotificationSound(soundPath.split('/').last.split('.').first) : null);
    
    var iOSPlatformChannelSpecifics = DarwinNotificationDetails(
        sound: soundPath.split('/').last);
    
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);
    
    await flutterLocalNotificationsPlugin.show(
        0, 'Custom Sound Notification', 'This is the body of the notification', platformChannelSpecifics,
        payload: 'item x');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Sounds App"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}