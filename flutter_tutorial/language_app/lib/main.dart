import 'generated/l10n.dart';
import 'package:flutter/material.dart';
import 'language_selection_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? preferredLanguage = prefs.getString('preferred_language');
  runApp(LanguageApp(preferredLanguage: preferredLanguage));
}

class LanguageApp extends StatelessWidget {
  final String? preferredLanguage;

  const LanguageApp({super.key, this.preferredLanguage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale(preferredLanguage ?? 'en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const LanguageSelectionScreen(),
    );
  }
}
