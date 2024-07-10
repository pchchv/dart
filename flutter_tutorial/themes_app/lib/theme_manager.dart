import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  late SharedPreferences _prefs;
  late bool _darkTheme;

  bool get darkTheme => _darkTheme;
}
