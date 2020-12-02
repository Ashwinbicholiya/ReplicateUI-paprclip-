import 'package:flutter/material.dart';
import 'package:paprclip/homescreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      debugShowCheckedModeBanner: false,
     home: HomeScreen(),
    );
  }
}