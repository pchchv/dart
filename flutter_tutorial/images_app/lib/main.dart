import 'package:flutter/material.dart';

void main() {
  runApp(ImagesApp());
}

class ImagesApp extends StatelessWidget {
  ImagesApp({super.key});

  final List<String> localImages = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  final List<String> networkImages = [
    "https://picsum.photos/500?image=10",
    "https://picsum.photos/500?image=11",
    "https://picsum.photos/500?image=12",
    "https://picsum.photos/500?image=13",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Grid"),
        ),
      ),
    );
  }
}
