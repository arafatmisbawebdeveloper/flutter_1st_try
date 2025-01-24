import 'package:flutter/material.dart';

class CardGuide extends StatelessWidget {
  const CardGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Guide')),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          margin: const EdgeInsets.all(24),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Card Widget',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                    'This is an example of a Card with elevation and rounded corners.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
