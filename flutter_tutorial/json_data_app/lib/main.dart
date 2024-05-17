import 'package:flutter/material.dart';

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
    );
  }
}

class UserDataTable extends StatefulWidget {
}

class _UserDataTableState extends State<UserDataTable> {

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
