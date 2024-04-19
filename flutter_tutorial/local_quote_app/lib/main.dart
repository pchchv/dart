class Quote {
  final String text;
  final String author;

  Quote({
    required this.text,
    required this.author
  });

  factory Quote.fromJSON(Map<String, dynamic> json) {
    return Quote(
      text: json['text'] as String,
      author: json['from'] as String,
    );
  }
}

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
}
