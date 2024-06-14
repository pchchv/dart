import 'item.dart';
import 'detail_page.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatelessWidget {
  final List<Item> items = List.generate(
    20,
    (index) => Item('Item $index', 'Description of Item $index'),
  );

  MasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Master Page')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
