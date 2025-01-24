// GridView.builder Widget
import 'package:flutter/material.dart';

class GridViewGuide extends StatelessWidget {
  const GridViewGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.teal,
            child: Center(
              child: Text('Grid Item ${index + 1}',
                  style: const TextStyle(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
