import 'package:flutter/material.dart';

void main() => runApp(const MenuApp());

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<ListTile> items = [
    ListTile(
      title: const Text('Dish Description'),
      subtitle: const Text('8.33'),
      leading: SizedBox(child: Image.network('https://picsum.photos/250?image=1')),
    ),
    ListTile(
      title: const Text('Dish Description'),
      subtitle: const Text('8.33'),
      leading: SizedBox(child: Image.network('https://picsum.photos/250?image=2')),
    ),
    ListTile(
      title: const Text('Dish Description'),
      subtitle: const Text('8.33'),
      leading: SizedBox(child: Image.network('https://picsum.photos/250?image=3')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
    );
  }
}