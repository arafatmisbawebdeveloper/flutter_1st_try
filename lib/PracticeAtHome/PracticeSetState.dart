import 'package:flutter/material.dart';
import 'package:flutter_1st_try/PracticeAtHome/createButton.dart';

class Practicesetstate extends StatefulWidget {
  const Practicesetstate({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Practicesetstate> {
  String topic = "packages";
  callback(cngTopic) {
    setState(() {
      topic = cngTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Set state"),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 70,
            margin: const EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "We are learnimg flutter " + topic,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          MyButton(topic: "GetX", callbackFunction: callback),
        ],
      ),
    );
  }
}
