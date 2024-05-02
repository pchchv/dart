import 'package:flutter/material.dart';

void main() {}

class SelectsAssetsApp extends StatefulWidget {
  const SelectsAssetsApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectsAssetsAppState createState() => _SelectsAssetsAppState();
}

class _SelectsAssetsAppState extends State<SelectsAssetsApp> {
  bool useSet1 = true;

  void _toggleAssets() {
    setState(() {
      useSet1 = !useSet1;
    });
  }
}
