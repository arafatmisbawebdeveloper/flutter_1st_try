// Expanded Widget
import 'package:flutter/material.dart';

class ExpandedGuide extends StatelessWidget {
  const ExpandedGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              height: 100,
              child: const Center(child: Text('Expanded 2x')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 100,
              child: const Center(child: Text('Expanded 1x')),
            ),
          ),
        ],
      ),
    );
  }
}
