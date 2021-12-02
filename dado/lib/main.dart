import 'package:flutter/material.dart';
import 'package:dado/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dado App',
      home: HomePage()
    );
    
  }
}