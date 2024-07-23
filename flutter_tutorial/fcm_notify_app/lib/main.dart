import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const NotifyApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log('Handling a background message: ${message.messageId}');
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
