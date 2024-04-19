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

void main() {}