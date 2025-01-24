// GridView.count Widget
import 'package:flutter/material.dart';

class GridViewCountGuide extends StatelessWidget {
  const GridViewCountGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: List.generate(12, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Item ${index + 1}',
                  style: const TextStyle(color: Colors.white)),
            ),
          );
        }),
      ),
    );
  }
}
