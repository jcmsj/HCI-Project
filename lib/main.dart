import 'package:flutter/material.dart';
import 'alert_screen.dart';
import 'intro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: intro_screen(),
    );
  }
}