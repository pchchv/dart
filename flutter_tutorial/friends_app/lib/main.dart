import 'package:flutter/material.dart';

class Friend {
  final String name;

  Friend({
    required this.name,
  });
}

List<Friend> posts = [
  Friend(
    name: 'John',
  ),
  Friend(
    name: 'Jack',
  ),
  Friend(
    name: 'Vladimir',
  ),
  Friend(
    name: 'Max',
  ),
  Friend(
    name: 'Vladislav',
  ),
  Friend(
    name: 'Valeria',
  ),
  Friend(
    name: 'Sasha',
  ),
  Friend(
    name: 'Tanya',
  ),
  Friend(
    name: 'Sasha',
  ),
  Friend(
    name: 'Polly',
  ),
];

void main() {
  runApp(const FriendsApp());
}

class FriendsApp extends StatelessWidget {
  const FriendsApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Friends list")),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(posts[index].name),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
