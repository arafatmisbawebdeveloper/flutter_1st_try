import 'package:flutter/material.dart';

class Circleavatarguide extends StatelessWidget {
  const Circleavatarguide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          backgroundImage: AssetImage("assets/images/Karna.jpg"),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.edit,
              color: Colors.green,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
