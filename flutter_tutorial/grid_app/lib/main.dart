import 'package:flutter/material.dart';

void main() {}

class AspectRatioGridView extends StatelessWidget {
  const AspectRatioGridView({super.key});

  Widget _buildSquareItem(int index) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
