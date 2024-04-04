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
            Image.asset('assets/images/puppy0.jpg'),
            Image.asset('assets/images/puppy1.jpg'),
            Image.asset('assets/images/puppy2.jpg'),
            Image.asset('assets/images/puppy3.jpg'),
            Image.asset('assets/images/puppy4.jpg'),
            Image.asset('assets/images/puppy5.jpg'),
            Image.asset('assets/images/puppy6.jpg'),
            Image.asset('assets/images/puppy7.jpg'),
            Image.asset('assets/images/puppy8.jpg'),
            Image.asset('assets/images/puppy9.jpg'),
          ],
        )
      ),
    );
  }
}