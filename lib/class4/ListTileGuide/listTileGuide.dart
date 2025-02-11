import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTileGuide'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: const Text('MisbaArafat'),
              subtitle: const Text('Flutter Developer'),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                print('ListTile Clicked');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: const Text('John Doe'),
              subtitle: const Text('Jr.Flutter Developer'),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                print('ListTile Clicked');
              },
            )
          ],
        ));
  }
}
