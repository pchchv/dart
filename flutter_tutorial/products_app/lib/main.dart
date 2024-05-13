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
    );
  }

class _ProductTablePageState extends State<ProductTablePage> {
}
