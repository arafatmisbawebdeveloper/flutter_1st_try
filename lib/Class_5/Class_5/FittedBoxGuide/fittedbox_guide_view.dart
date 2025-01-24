// FittedBox Widget
import 'package:flutter/material.dart';

class FittedBoxGuide extends StatelessWidget {
  const FittedBoxGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 122,
          color: Colors.blue,
          child: const FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: Text(
              'FittedBox Example',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
