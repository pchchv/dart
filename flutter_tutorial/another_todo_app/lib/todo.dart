import 'package:flutter/material.dart';

class Todo extends ChangeNotifier {
  final List<String> _todos = [];
  List<String> get todos => _todos;

  void add(String todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void remove(String todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
