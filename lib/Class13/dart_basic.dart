import 'package:flutter/material.dart';

class DartBasic extends StatelessWidget {
  const DartBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Dart language"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            mPrint();
          },
          child: Text(
            "Execute",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
      ),
    );
  }

  void mPrint() {
    print("Hello world");
  }
}
