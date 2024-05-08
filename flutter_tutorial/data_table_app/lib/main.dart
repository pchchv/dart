import 'package:flutter/material.dart';

void main() {
  runApp(const DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product DataTable'),
        ),
        body: ProductDataTable(),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final int stock;

  Product({required this.name, required this.price, required this.stock});
}

class ProductDataTable extends StatelessWidget {
}
