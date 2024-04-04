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
            Image.asset(
                'assets/images/puppy0.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy1.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy2.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy3.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy4.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy5.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy6.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy7.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy8.jpg',
                height: 300,
                width: 300,
              ),
            Image.asset('assets/images/puppy9.jpg',
                height: 300,
                width: 300,
              ),
          ],
        )
      ),
    );
  }
}