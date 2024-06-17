import 'package:flutter/material.dart';

void main() {
  runApp(const NaviApp());
}

class NaviApp extends StatelessWidget {
  const NaviApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nested Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}

class FirstTabScreen1 extends StatelessWidget {
  const FirstTabScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Tab Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstTabScreen2()),
            );
          },
          child: const Text('Go to First Tab Screen 2'),
        ),
      ),
    );
  }
}

class FirstTabScreen2 extends StatelessWidget {
  const FirstTabScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Tab Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to First Tab Screen 1'),
        ),
      ),
    );
  }
}

class SecondTabScreen1 extends StatelessWidget {
  const SecondTabScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Tab Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondTabScreen2()),
            );
          },
          child: const Text('Go to Second Tab Screen 2'),
        ),
      ),
    );
  }
}

class SecondTabScreen2 extends StatelessWidget {
  const SecondTabScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Tab Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to Second Tab Screen 1'),
        ),
      ),
    );
  }
}

class FirstTabNavigator extends StatelessWidget {
  const FirstTabNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const FirstTabScreen1(),
        );
      },
    );
  }
}
