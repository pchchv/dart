import 'package:flutter/material.dart';

void main() => runApp(const PuppiesApp());

class PuppiesApp extends StatelessWidget {
  const PuppiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puppies App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Puppies App"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
            Image.asset('assets/images/puppy.jpg'),
          ],
        )
      ),
    );
  }
}