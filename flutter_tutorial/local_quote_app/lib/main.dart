import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle; 

class Quote {
  final String text;
  final String author;

  Quote({
    required this.text,
    required this.author
  });

  factory Quote.fromJSON(Map<String, dynamic> json) {
    return Quote(
      text: json['text'] as String,
      author: json['from'] as String,
    );
  }
}

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
   List<Quote> _quotes = [];

  @override
  void initState() {
    super.initState();
    loadQuotesFromAsset();
  }

  Future<void> loadQuotesFromAsset() async {
    final String jsonString = await rootBundle.loadString("assets/quotes.json");
    final List<dynamic> jsonQuotes = jsonDecode(jsonString);
    setState(() {
      _quotes = jsonQuotes.map((json) => Quote.fromJSON(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
      ),
      body: _quotes.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _quotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _quotes[index].text,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text(
                    _quotes[index].author,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                );
              },
            ),
    );
  }
}
