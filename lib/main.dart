import 'package:flutter/material.dart';
import 'package:flutter_app/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TLC Trip Data',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Nav(),
    );
  }
}
