import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Example')),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text('Row Example'),
            Icon(Icons.star, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
