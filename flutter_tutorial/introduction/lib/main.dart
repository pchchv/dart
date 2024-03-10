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

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Column(
          // Try replacing "center" with "start", "end", "spaceBetween", "spaceAround" or "spaceEvenly"
          mainAxisAlignment: MainAxisAlignment.start,
                      // Try replacing "center" with "start", "end", "stretch", or "baseline"
            crossAxisAlignment: CrossAxisAlignment.stretch,
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

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
              mainAxisAlignment: MainAxisAlignment.center,
              // Try replacing "center" with "start", "end", "stretch" or "baseline"
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  50, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  )),
            ),
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
          title: const Text('Column In Flutter'),
        ),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
             // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.start,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
                50,
                (index) => Expanded(
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100, width: 100, color: Colors.white),
                  ))),
          ),
        ),
      ),
    ),
  );
}