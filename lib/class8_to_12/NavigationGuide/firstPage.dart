import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi!!! This is first page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/lib/class8_to_12/NavigationGuide/home.dart');
            },
            child: Text("Go to Home")),
      ),
    );
  }
}
