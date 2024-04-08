import 'package:flutter/material.dart';

void main() {
  runApp(const ImagesApp());
}

class ImagesApp extends StatelessWidget {
  const ImagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Images",
      home: ImagesPage(),
    );
  }
}

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  ImagesPageState createState() => ImagesPageState();
}

class ImagesPageState extends State<ImagesPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          shrinkWrap: true,
          children: [
            Image.network('https://picsum.photos/500?image=9'),
            Image.network('https://picsum.photos/500?image=100'),
            Image.network('https://picsum.photos/500?image=101'),
            Image.network('https://picsum.photos/500?image=102'),
            Image.network('https://picsum.photos/500?image=103'),
            Image.network('https://picsum.photos/500?image=104'),
            Image.network('https://picsum.photos/500?image=105'),
            Image.network('https://picsum.photos/500?image=106'),
            Image.network('https://picsum.photos/500?image=107'),
            Image.network('https://picsum.photos/500?image=108'),
            Image.network('https://picsum.photos/500?image=109'),
            Image.network('https://picsum.photos/500?image=110'),
            Image.network('https://picsum.photos/500?image=111'),
          ],
        ),
      ),
    );
  }
}