import 'package:flutter/material.dart';

void main() {}

class _SelectsAssetsAppState extends State<SelectsAssetsApp> {
  bool useSet1 = true;

  void _toggleAssets() {
    setState(() {
      useSet1 = !useSet1;
    });
  }
}
