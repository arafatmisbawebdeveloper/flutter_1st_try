import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String topic;
  final Function callbackFunction;
  const MyButton(
      {super.key, required this.topic, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackFunction(topic);
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.only(left: 50, right: 40, top: 20, bottom: 20),
        decoration: BoxDecoration(
            color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            topic,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
