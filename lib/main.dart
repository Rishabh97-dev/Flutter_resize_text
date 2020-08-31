import 'home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Me!',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(title: 'Coding with Me!'),
    );
  }
}
