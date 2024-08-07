import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = 'en';

  @override
  void initState() {
    super.initState();
    _loadPreferredLanguage();
  }

  _loadPreferredLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString('preferred_language') ?? 'en';
    });
  }

  _savePreferredLanguage(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('preferred_language', languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<String>(
              title: const Text('English'),
              value: 'en',
              groupValue: _selectedLanguage,
              onChanged: (String? value) {
                setState(() {
                  _selectedLanguage = value!;
                  _savePreferredLanguage(value);
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Spanish'),
              value: 'es',
              groupValue: _selectedLanguage,
              onChanged: (String? value) {
                setState(() {
                  _selectedLanguage = value!;
                  _savePreferredLanguage(value);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
