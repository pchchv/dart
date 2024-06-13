import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'screen_a.dart';
import 'screen_b.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/screenA': (context) => const ScreenA(),
        '/screenB': (context) => const ScreenB(),
      },
    );
  }
}
