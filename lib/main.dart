import 'package:flutter/material.dart';
import 'package:flutter_1st_try/Home/home_view.dart';
import 'package:flutter_1st_try/class8_to_12/NavigationGuide/firstPage.dart';
import 'package:flutter_1st_try/class8_to_12/NavigationGuide/home.dart';
import 'package:flutter_1st_try/class8_to_12/NavigationGuide/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ListView Navigation',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
        routes: {
          "/home": (context) => NavigationGuide(),
          "/second": (context) => Firstpage(),
          "/third": (context) => Secondpage(),
          "/main": (context) => HomeScreen(),
        });
  }
}
