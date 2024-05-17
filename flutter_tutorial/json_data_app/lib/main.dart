import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Data Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserDataTable(),
    );
  }
}

class UserDataTable extends StatefulWidget {
  const UserDataTable({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserDataTableState createState() => _UserDataTableState();
}

class _UserDataTableState extends State<UserDataTable> {
  List<Map<String, dynamic>> _userData = [];

  Future<void> _fetchUserData() async {
    // Mock API URL
    String apiUrl = "https://jsonplaceholder.typicode.com/users";
    
    // Fetch data
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        _userData = jsonData.cast<Map<String, dynamic>>();
      });
    } else {
      throw Exception('Failed to load user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data Table'),
      ),
    );
  }
}

class UserData extends DataTableSource {
  final List<Map<String, dynamic>> _userData;
  UserData(this._userData);

  @override
  DataRow? getRow(int index) {
    if (index >= _userData.length) return null;
    final user = _userData[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('${user['id']}')),
        DataCell(Text(user['name'])),
        DataCell(Text(user['username'])),
        DataCell(Text(user['email'])),
      ],
    );
  }

  @override
  int get rowCount => _userData.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
