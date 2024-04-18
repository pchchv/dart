import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quote {
  final String text;
  final String from;
  
  Quote({
    required this.text,
    required this.from
  });

  factory Quote.fromJSON(Map<String, dynamic> json) {
    return Quote(
      text: json['text'],
      from: json['from'],
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
    const appTitle = "Quote app";

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: FutureBuilder(
          future: OnlineService().loadQuote(),
          builder: (context, snapshot) {
            Quote quote = snapshot.data as Quote;
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          quote.text,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          quote.from,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}