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
  final TextEditingController _quoteController = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: ListView.builder(
        itemCount: _quotes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_quotes[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _deleteQuote(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add Quote'),
                content: TextField(
                  controller: _quoteController,
                  decoration: const InputDecoration(labelText: 'Enter a quote'),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      String quote = _quoteController.text;
                      if (quote.isNotEmpty) {
                        _addQuote(quote);
                        _quoteController.clear();
                      }
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
