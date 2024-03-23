import 'package:flutter/material.dart';

void main() {
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView')),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Image.network('https://picsum.photos/200?image=25'),
            Image.network('https://picsum.photos/200?image=26'),
            Image.network('https://picsum.photos/200?image=27'),
            Image.network('https://picsum.photos/200?image=28'),
            Image.network('https://picsum.photos/200?image=29'),
            Image.network('https://picsum.photos/200?image=30'),
            Image.network('https://picsum.photos/200?image=31'),
            Image.network('https://picsum.photos/200?image=32'),
            Image.network('https://picsum.photos/200?image=33'),
            Image.network('https://picsum.photos/200?image=34'),
            Image.network('https://picsum.photos/200?image=35'),
            Image.network('https://picsum.photos/200?image=36'),
            Image.network('https://picsum.photos/200?image=37'),
            Image.network('https://picsum.photos/200?image=38'),
            Image.network('https://picsum.photos/200?image=39'),
          ],
        ),
      ),
    );
  }
}
