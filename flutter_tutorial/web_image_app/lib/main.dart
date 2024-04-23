import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image Viewer",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ImageHomePage(),
    );
  }
}

class ImageHomePage extends StatefulWidget {
  const ImageHomePage({super.key});

  @override
  ImageyHomePageState createState() => ImageyHomePageState();
}

class ImageyHomePageState extends State<ImageHomePage> {
  @override
  void initState() {
    super.initState();
  }
}
