class Quote {
  final String text;
  final String from;
  
  Quote({
    required this.text,
    required this.from
  })

  factory Quote.fromJSON(Map<String, dynamic> json) {
    return Quote(
      text: json['text'],
      from: json['from'],
    );
  }
}

void main() {}