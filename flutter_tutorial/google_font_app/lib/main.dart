import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FontPickerApp());
}

class FontPickerApp extends StatefulWidget {
  const FontPickerApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FontPickerAppState createState() => _FontPickerAppState();
}

class _FontPickerAppState extends State<FontPickerApp> {
  String _selectedFont = "Roboto"; // Default font
  double _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Font Picker"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _selectedFont,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFont = newValue!;
                });
              },
              items: [
                'Roboto',
                'Open Sans',
                'Lato',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Slider(
              value: _fontSize,
              min: 10.0,
              max: 40.0,
              onChanged: (newValue) {
                setState(() {
                  _fontSize = newValue;
                });
              },
            ),
            Text(
              "Sample Text",
              style: GoogleFonts.getFont(
                _selectedFont,
                fontSize: _fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
