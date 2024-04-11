import 'package:flutter/material.dart';

void main() {
  runApp(const OrientGridApp());
}

class OrientGridApp extends StatelessWidget {
  const OrientGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dynamic Column GridView",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DynamicColumnGridView(),
    );
  }
}

class DynamicColumnGridView extends StatelessWidget {
  const DynamicColumnGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Column GridView"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          int columnsCount = orientation == Orientation.portrait ? 2 : 4;
          return GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnsCount,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
