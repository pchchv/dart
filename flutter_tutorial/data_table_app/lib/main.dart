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
  ProductDataTable({super.key});

  final List<Product> products = [
    Product(name: 'Product A', price: 10.0, stock: 50),
    Product(name: 'Product B', price: 20.0, stock: 30),
    Product(name: 'Product C', price: 15.0, stock: 25),
    Product(name: 'Product D', price: 25.0, stock: 20),
    Product(name: 'Product E', price: 30.0, stock: 15),
  ];
}
