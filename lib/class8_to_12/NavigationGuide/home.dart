import 'package:flutter/material.dart';

class NavigationGuide extends StatelessWidget {
  const NavigationGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Welcome to Homepage"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Go to Second page")),
      ),
    );
  }
}
