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
      title: const Text('Pasta Napoletana is an Italian dish known for its enticingly simple tomato-based sauce.\nThe good stuff, Napoletana sauce, also goes by the variants Napolitana sauce, Neapolitan sauce, or Napoli sauce.\nNaples, of course, is the bustling city in southern Italy that brings the world Neapolitan pizza.'),
      subtitle: const Text('11.50'),
      leading: Image.asset(
        'assets/images/pasta_napoletana.png',
        width: 950,
        height: 950,
        alignment: Alignment.center,
      ),
    ),
    ListTile(
      title: const Text('Purists call it the only true Neapolitan pizza.\nAficionados claim it’s the perfect gastronomic representation of the Italian flag.\nYou will find it in every pizzeria in the world, a constant among shifting fads and preferences.'),
      subtitle: const Text('15.00'),
      leading: Image.asset(
        'assets/images/margherita.png',
        width: 950,
        height: 950,
        alignment: Alignment.center,
      ),
    ),
    ListTile(
      title: const Text('Pepperoni is essentially an American version of salami, something close to what Italians might call salame piccante, a generic term that means “spicy salami.”\nIt’s made from beef and cured pork mixed together and then seasoned with a blend that usually includes paprika, garlic, black pepper, crushed red pepper, cayenne pepper, mustard seed, and fennel seed.\nEvery pepperoni producer uses a different mix and ratio of ingredients, but paprika is always present:\nit’s what gives pepperoni its color.\nAnd clearly that list of ingredients had some influence on the name!'),
      subtitle: const Text('15.35'),
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