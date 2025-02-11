import 'package:flutter/material.dart';

class NavigationGuide extends StatelessWidget {
  const NavigationGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.call),
        title: Text("Navigation Example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/firstpage");
            },
            child: Text("Go to first page")),
      ),
    );
  }
}
