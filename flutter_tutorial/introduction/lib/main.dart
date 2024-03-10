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

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: const Row(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.start,
          // Try replacing "center" with "start", "end", "stretch" or "baseline"
          crossAxisAlignment: CrossAxisAlignment.start,
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

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // Try replacing "center" with "start", "end", "stretch" or "baseline"
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                  50, (index) => const Icon(Icons.star, color: Colors.yellow)),
            ),
          ),
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
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: Row(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50,
                (index) =>  const Expanded(
                    child: Icon(Icons.star, color: Colors.yellow))),
          ),
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
        body: Container(
          color: Colors.green,
          height: double.infinity,
          child: Row(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.start,
             // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
                50,
                (index) => const Flexible(
                    fit: FlexFit.loose,
                    child: Icon(Icons.star,  color: Colors.yellow))),
          ),
        ),
      ),
    ),
  );
}