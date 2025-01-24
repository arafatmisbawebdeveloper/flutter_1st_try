// ListView.builder Widget
import 'package:flutter/material.dart';

class ListViewBuilderGuide extends StatelessWidget {
  const ListViewBuilderGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        reverse: false,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text('List Item ${index + 1}'),
            subtitle: Text('Subtitle ${index + 1}'),
          );
        },
      ),
    );
  }
}
