import 'package:http/http.dart' as http;
import 'dart:convert';
import 'quote.dart';

class ApiService {
  static const String apiUrl = 'https://jsonguide.technologychannel.org/quotes.json';

  static Future<List<Quote>> fetchQuotes() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((quoteJson) => Quote.fromJson(quoteJson)).toList();
    } else {
      throw Exception('Failed to load quotes');
    }
  }
}
