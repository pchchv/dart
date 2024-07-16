import 'package:flutter/material.dart';
import 'api_service.dart';
import 'quote.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivational Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuoteListScreen(),
    );
  }
}

class QuoteListScreen extends StatefulWidget {
  const QuoteListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteListScreenState createState() => _QuoteListScreenState();
}

class _QuoteListScreenState extends State<QuoteListScreen> {
  late Future<List<Quote>> futureQuotes;

  @override
  void initState() {
    super.initState();
    futureQuotes = ApiService.fetchQuotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motivational Quotes'),
      ),
      body: FutureBuilder<List<Quote>>(
        future: futureQuotes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No quotes found'));
          } else {
            List<Quote> quotes = snapshot.data!;
            return ListView.builder(
              itemCount: quotes.length,
              itemBuilder: (context, index) {
                Quote quote = quotes[index];
                return ListTile(
                  title: Text(quote.text),
                  subtitle: Text(quote.author),
                );
              },
            );
          }
        },
      ),
    );
  }
}
