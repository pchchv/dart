import 'package:flutter/material.dart';

void main() {
  runApp(const IndexApp());
}

class IndexApp extends StatelessWidget {
  const IndexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView with AlertDialog",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridViewWithAlertDialog(),
    );
  }
}

class GridViewWithAlertDialog extends StatelessWidget {
  const GridViewWithAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView with AlertDialog"),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 0.5,
          crossAxisSpacing: 0.5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _showItemDetails(context, index);
            },
            child: Container(
              color: Colors.cyanAccent,
              child: Center(
                child: Text(
                  "Item $index",
                  style: const TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showItemDetails(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Item Details"),
          content: Text("You tapped on item $index."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
