import 'model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://api.example.com/items';

  Future<List<Item>> fetchItems() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      List<Item> items = jsonList.map((json) => Item.fromJson(json)).toList();
      return items;
    } else {
      throw Exception('Failed to load items');
    }
  }
}
