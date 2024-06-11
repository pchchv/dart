import 'package:flutter/material.dart';

void main() {
  runApp(const ColorScreenApp());
}

class ColorScreenApp extends StatelessWidget {
  const ColorScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Color Selection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/color_selection': (context) => ColorSelectionScreen(),
      },
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
  Color _backgroundColor = Colors.white;

  void _navigateAndSelectColor(BuildContext context) async {
    final selectedColor = await Navigator.pushNamed(context, '/color_selection');
    if (selectedColor != null && selectedColor is Color) {
      setState(() {
        _backgroundColor = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () => _navigateAndSelectColor(context),
            child: const Text('Select Color'),
          ),
        ),
      ),
    );
  }
}

class ColorSelectionScreen extends StatelessWidget {
  ColorSelectionScreen({super.key});
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Color'),
      ),
    );
  }
}
