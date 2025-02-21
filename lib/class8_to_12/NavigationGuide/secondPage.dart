import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is second page"),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          child: Text("Go HOme")),
    );
  }
}
