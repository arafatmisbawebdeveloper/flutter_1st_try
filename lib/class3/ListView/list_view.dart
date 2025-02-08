import 'package:flutter/material.dart';

class ListViewGuide extends StatelessWidget {
  const ListViewGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 25,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      reverse: false,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.check_circle),
          title: Text('Item ${index + 1}'),
          subtitle: Text('Subtitle ${index + 1}'),
          onTap: () {},
        );
      },
    ));
  }
}
