import 'package:flutter/material.dart';

void main() {}

class InnerListView extends StatelessWidget {
  const InnerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Text('Inner List Item ${index + 1}', style: const TextStyle(color: Colors.red));
        },
      ),
    );
  }
}
