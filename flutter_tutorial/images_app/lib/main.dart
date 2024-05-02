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
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: localImages.length + networkImages.length,
          itemBuilder: (context, index) {
            if (index < localImages.length) {
              return Image.asset(
                localImages[index],
                fit: BoxFit.cover,
              );
            } else {
              int networkIndex = index - localImages.length;
              return Image.network(
                networkImages[networkIndex],
                fit: BoxFit.cover,
              );
            }
          },
        ),
      ),
    );
  }
}
