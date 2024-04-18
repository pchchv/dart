import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

class OnlineService {
  // Load and decode the JSON File
  Future<Quote> loadQuote() async {
    final response = await http.get(Uri.parse('https://jsonguide.technologychannel.org/quotes.json'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return Quote.fromJSON(jsonResponse);
    } else {
      throw Exception('Failed to load data from server');
    }
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
        primarySwatch: Colors.green,
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
