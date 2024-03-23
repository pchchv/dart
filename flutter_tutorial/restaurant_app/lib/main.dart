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
      leading: Image.asset(
        'assets/images/pasta_napoletana.png',
        width: 950,
        height: 950,
        alignment: Alignment.center,
      ),
    ),
    ListTile(
      title: const Text('Dish Description'),
      subtitle: const Text('8.33'),
      leading: Image.asset(
        'assets/images/margherita.png',
        width: 950,
        height: 950,
        alignment: Alignment.center,
      ),
    ),
    ListTile(
      title: const Text('Dish Description'),
      subtitle: const Text('8.33'),
      leading: Image.asset(
        'assets/images/pepperoni.png',
        width: 950,
        height: 950,
        alignment: Alignment.center,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant app'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        }
      )
    );
  }
}