import 'package:flutter/material.dart';
  
void main() { 
  runApp(const PuppyApp()); 
} 

class PuppyApp extends StatelessWidget {
  const PuppyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Puppy',
      home: PuppyScreen(),
    );
  }
}

class PuppyScreen extends StatefulWidget {
  const PuppyScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PuppyScreenState createState() => _PuppyScreenState();
}

class _PuppyScreenState extends State<PuppyScreen> {
  // Define the counter variable
  double _size = 20;

  // Define the increment and decrement counter methods
  void _doubleSize() {
    setState(() {
      _size *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puppy')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/puppy.jpg',
                height: _size,
                width: _size,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                FloatingActionButton(
                  onPressed: _doubleSize,
                  tooltip: 'double',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}