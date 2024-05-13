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
  String _sortColumn = 'name';
  bool _sortAscending = true;
  final List<Product> _products = [
    Product(name: 'Product A', price: 15.55, quantity: 5),
    Product(name: 'Product B', price: 15.00, quantity: 3),
    Product(name: 'Product C', price: 20.00, quantity: 7),
  ];

  void _sort(String column) {
    if (_sortColumn == column) {
      setState(() {
        _sortAscending = !_sortAscending;
      });
    } else {
      setState(() {
        _sortColumn = column;
        _sortAscending = true;
      });
    }
    _products.sort((a, b) {
      if (column == 'name') {
        return _sortAscending
            ? a.name.compareTo(b.name)
            : b.name.compareTo(a.name);
      } else if (column == 'price') {
        return _sortAscending
            ? a.price.compareTo(b.price)
            : b.price.compareTo(a.price);
      } else {
        return _sortAscending
            ? a.quantity.compareTo(b.quantity)
            : b.quantity.compareTo(a.quantity);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Table'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          sortAscending: _sortAscending,
          sortColumnIndex: _sortColumnIndex(),
          columns: [
            DataColumn(
              label: const Text('Product Name'),
              onSort: (columnIndex, ascending) {
                _sort('name');
              },
            ),
            DataColumn(
              label: const Text('Price'),
              onSort: (columnIndex, ascending) {
                _sort('price');
              },
            ),
            DataColumn(
              label: const Text('Quantity'),
              onSort: (columnIndex, ascending) {
                _sort('quantity');
              },
            ),
          ],
          rows: _products
              .map(
                (product) => DataRow(
                  cells: [
                    DataCell(Text(product.name)),
                    DataCell(Text('\$${product.price.toStringAsFixed(2)}')),
                    DataCell(Text(product.quantity.toString())),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  int _sortColumnIndex() {
    switch (_sortColumn) {
      case 'name':
        return 0;
      case 'price':
        return 1;
      case 'quantity':
        return 2;
      default:
        return 0;
    }
  }
}
