import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuotesScreen(),
    );
  }
}

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuotesScreenState createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State {
  List<String> _quotes = [];

  @override
  void initState() {
    super.initState();
    _loadQuotes();
  }

  Future<void> _loadQuotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _quotes = prefs.getStringList('quotes') ?? [];
    });
  }

  Future<void> _saveQuotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('quotes', _quotes);
  }

  void _addQuote(String quote) {
    setState(() {
      _quotes.add(quote);
      _saveQuotes();
    });
  }

  void _deleteQuote(int index) {
    setState(() {
      _quotes.removeAt(index);
      _saveQuotes();
    });
  }
}
