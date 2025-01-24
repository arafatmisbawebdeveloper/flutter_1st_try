import 'package:flutter/material.dart';

class ButtonsGuide extends StatelessWidget {
  const ButtonsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Elevated Button
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                //elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Icon Button
            IconButton(
              onPressed: () {
                print('Icon Button Pressed!');
              },
              icon: const Icon(Icons.thumb_up,
                  color: Color.fromARGB(255, 33, 243, 51)),
              tooltip: 'Like',
            ),

            //TextButton
            TextButton(onPressed: () {}, child: const Text('Text Button')),

            // Outlined Button
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button'))
          ],
        ),
      ),
    );
  }
}
