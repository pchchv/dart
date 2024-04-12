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
    );
  }
}

class GridViewWithAlertDialog extends StatelessWidget {
  const GridViewWithAlertDialog({super.key});

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
