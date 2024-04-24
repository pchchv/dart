import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const CacheApp());
}

class CacheApp extends StatelessWidget {
  const CacheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cached Image App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CachedImage(),
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CachedNetworkImage(
          imageUrl: "https://picsum.photos/500?image=100",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
