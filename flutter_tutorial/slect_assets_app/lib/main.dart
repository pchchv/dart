import 'package:flutter/material.dart';

void main() {
  runApp(const SelectsAssetsApp());
}

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asset Switcher'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: useSet1,
              onChanged: (newValue) {
                _toggleAssets();
              },
            ),
            Text(
              'Use Set ${useSet1 ? '1' : '2'}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.asset(
              useSet1 ? 'assets_set1/image1.jpg' : 'assets_set2/image2.jpg',
              width: 200,
              height: 200,
            ),
            Text(
              useSet1 ? 'Font from Set 1' : 'Font from Set 2',
              style: TextStyle(
                fontSize: 20,
                fontFamily: useSet1 ? 'Font1' : 'Font2',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
