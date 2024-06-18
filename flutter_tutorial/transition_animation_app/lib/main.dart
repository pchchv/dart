import 'home_screen.dart';
import 'second_screen.dart';
import 'custom_page_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScreensApp());
}

class ScreensApp extends StatelessWidget {
  const ScreensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Transition App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          return CustomPageRoute(page: const SecondScreen());
        }
        return null;
      },
    );
  }
}
