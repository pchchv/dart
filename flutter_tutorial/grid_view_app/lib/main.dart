import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewApp());
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridViewApp'),
        ),
        body: const GridViewW(),
      ),
    );
  }
}

class GridViewW extends StatelessWidget {
  const GridViewW({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(5),
          color: Colors.primaries[index % Colors.primaries.length],
          child: Center(
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
