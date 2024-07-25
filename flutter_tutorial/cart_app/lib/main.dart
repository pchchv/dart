import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingHomePage(),
    );
  }
}

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShoppingHomePageState createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  List<String> items = ["Apples", "Bananas", "Oranges", "Grapes"];
  List<String> cart = [];

  @override
  void initState() {
    super.initState();
    _loadCart();
  }

  _loadCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cartString = prefs.getString('cart');
    setState(() {
      cart = List<String>.from(jsonDecode(cartString!));
    });
    }

  _saveCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('cart', jsonEncode(cart));
  }

  _addItemToCart(String item) {
    setState(() {
      cart.add(item);
    });
    _saveCart();
  }

  _removeItemFromCart(String item) {
    setState(() {
      cart.remove(item);
    });
    _saveCart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cart, _removeItemFromCart)),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => _addItemToCart(items[index]),
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<String> cart;
  final Function(String) removeItemFromCart;

  const CartPage(this.cart, this.removeItemFromCart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart[index]),
            trailing: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => removeItemFromCart(cart[index]),
            ),
          );
        },
      ),
    );
  }
}
