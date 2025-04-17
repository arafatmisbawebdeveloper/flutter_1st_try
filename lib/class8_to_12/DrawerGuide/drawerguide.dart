import 'package:flutter/material.dart';

class Drawerguide extends StatelessWidget {
  const Drawerguide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcom to The Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // decoration: const BoxDecoration(
              //     color: Color.fromARGB(255, 247, 207, 216)),
              // child: Column(
              //   children: [
              //     ClipRRect(
              //       //borderRadius: BorderRadius.zero,
              //       child: Image.asset(
              //         "assets/images/Karna.jpg",
              //         height: 100,
              //         width: 400,
              //         alignment: Alignment.center,
              //       ),
              //     ),
              //     const Text('MisbaUlHoque')
              //   ],
              // ),

              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Misba Ul Hoque Arafat"),
                accountEmail: Text("arfatmisba33@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Karna.jpg"),
                ),
              ),
            ),
            Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: const Icon(Icons.heart_broken_sharp),
                  title: const Text("Tutha howa"),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.contact_emergency),
                  title: const Text("Contact"),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("LogOut"),
                  onTap: () => {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
