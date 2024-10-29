import 'package:coffeeshopdribble/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffee Shop UI ",
      home: HomePage(),
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.orange),
    );
  }
}
