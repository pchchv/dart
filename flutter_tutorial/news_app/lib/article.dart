import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchArticles() async {
  final response = await http.get(Uri.parse('')); // Add API URL

  if (response.statusCode == 200) {
    final List<dynamic> articlesJson = json.decode(response.body)['articles'];
    return articlesJson.map((json) => Article.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load articles');
  }
}

class Article {
  final String title;
  final String description;
  final String urlToImage;

  Article({required this.title, required this.description, required this.urlToImage});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
    );
  }
}
