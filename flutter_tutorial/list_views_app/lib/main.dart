import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewsApp());
}

class ListViewsApp extends StatelessWidget {
  const ListViewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListViewsApp'),
        ),
        body: const OuterListView(),
      ),
    );
  }
}

class OuterListView extends StatelessWidget {
  const OuterListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Outer List Item ${index + 1}'),
          subtitle: const InnerListView(),
        );
      },
    );
  }
}

class InnerListView extends StatelessWidget {
  const InnerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Text('Inner List Item ${index + 1}', style: const TextStyle(color: Colors.red));
        },
      ),
    );
  }
}
