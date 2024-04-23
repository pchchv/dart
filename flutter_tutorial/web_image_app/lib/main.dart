import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  String imageUrl = "https://picsum.photos/200?image=30";
  bool isLoading = true;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    fetchImage();
  }

  Future<void> fetchImage() async {
    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        setState(() {
          imageUrl = response.body;
          isLoading = false;
          isError = false;
        });
      } else {
        setState(() {
          isLoading = false;
          isError = true;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
        isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Viewer"),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : isError
                ? const Text("Error loading image")
                : Image.network(
                    imageUrl,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
      ),
    );
  }
}
