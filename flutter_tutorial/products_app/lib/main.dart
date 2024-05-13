import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final int quantity;

  Product({required this.name, required this.price, required this.quantity});
}

void main() {
  runApp(const ProductsApp());
}

class ProductsApp extends StatelessWidget {
  const ProductsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductTablePage(),
    );
  }
}

class ProductTablePage extends StatefulWidget {
  const ProductTablePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductTablePageState createState() => _ProductTablePageState();
}

class _ProductTablePageState extends State<ProductTablePage> {
  final List<Product> _products = [
    Product(name: 'Product A', price: 15.55, quantity: 5),
    Product(name: 'Product B', price: 15.00, quantity: 3),
    Product(name: 'Product C', price: 20.00, quantity: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Table'),
      ),
    );
  }
}
