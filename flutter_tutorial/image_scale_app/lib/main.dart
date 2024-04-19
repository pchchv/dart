import 'package:flutter/material.dart';

void main() {
  runApp(const ScaleApp());
}

class ScaleApp extends StatelessWidget {
  const ScaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaleHomePage(),
    );
  }
}

class ScaleHomePage extends StatelessWidget {
  const ScaleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Viewer"),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return SizedBox(
              width: orientation == Orientation.portrait ? 300.0 : 500.0,
              height: orientation == Orientation.portrait ? 500.0 : 300.0,
              child: Image.asset('assets/images/image.jpg'),
            );
          },
        ),
      ),
    );
  }
}
