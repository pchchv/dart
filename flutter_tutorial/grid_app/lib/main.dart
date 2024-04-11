import 'package:flutter/material.dart';

void main() {
  runApp(const GridApp());
}

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aspect Ratio GridView",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AspectRatioGridView(),
    );
  }
}

class AspectRatioGridView extends StatelessWidget {
  const AspectRatioGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio GridView"),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? _buildSquareItem(index) : _buildWideItem(index);
        },
      ),
    );
  }

  Widget _buildSquareItem(int index) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildWideItem(int index) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.green,
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
