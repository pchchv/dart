import 'package:flutter/material.dart';

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Column(
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
          title: const Text('Column In Flutter'),
        ),
        body: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
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
          title: const Text('Column In Flutter'),
        ),
        body: Column(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
            const SizedBox(height: 5),
            Container(height: 100, width: 100, color: Colors.blue),
          ],
        ),
      ),
    ),
  );
}