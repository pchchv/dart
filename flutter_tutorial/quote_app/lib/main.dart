import 'dart:convert';
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

void main() {}