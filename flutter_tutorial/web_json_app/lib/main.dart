import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart" as http';

void main() {
  runApp(const JSONReaderApp());
}

class JSONReaderApp extends StatelessWidget {
  const JSONReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSON Reader",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      )
    );
  }
}

class _JsonListViewScreenState extends State {
  List data = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://jsonguide.technologychannel.org/quotes.json"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }
}
