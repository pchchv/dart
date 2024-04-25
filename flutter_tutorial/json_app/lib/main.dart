import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const JSONApp());
}

class JSONApp extends StatelessWidget {
  const JSONApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSON Reader",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const JsonReader(),
    );
  }
}

class JsonReader extends StatefulWidget {
  const JsonReader({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JsonReaderState createState() => _JsonReaderState();
}

class _JsonReaderState extends State<JsonReader> {
  List<dynamic> _data = [];

  @override
  void initState() {
    super.initState();
    _loadJsonData();
  }

  Future<void> _loadJsonData() async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/data.json');
    setState(() {
      _data = json.decode(jsonString);
    });
  }
}
