import 'package:flutter/material.dart';

class Circleavatarguide extends StatelessWidget {
  const Circleavatarguide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.amberAccent,
          // ignore: prefer_const_constructors
          backgroundImage: AssetImage("assets/images/me.jpg"),
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
