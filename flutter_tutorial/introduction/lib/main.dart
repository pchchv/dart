import 'package:flutter/material.dart';

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Row(
          children: [
            Icon(Icons.star, size: 50),
            Text('I am learning flutter'),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    ),
  );
}
*/

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    ),
  );
}
*/

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    ),
  );
}
