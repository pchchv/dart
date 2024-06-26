import 'package:flutter/material.dart';

class Name {
  final String name;

  Name({
    required this.name,
  });
}

List<Name> names = [
  Name(
    name: "Jack"
  ),
  Name(
    name: "Alex",
  ),
  Name(
    name: "Kate",
  ),
  Name(
    name: "John",
  ),
  Name(
    name: "Anna",
  ),
];

void main() {
  runApp(const NamesApp());
}

class NamesApp extends StatelessWidget {
  const NamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Names")),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            MaterialColor color;
            String name = names[index].name;
            if (name[0] == "A") {
              color = Colors.green;
            } else {
              color = Colors.red;
            }
            return ListTile(
              title: Text(name),
              textColor: color,
            );
          },
        ),
      ),
    );
  }
}