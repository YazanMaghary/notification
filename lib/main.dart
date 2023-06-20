import 'package:flutter/material.dart';
import 'package:notification/home.dart';

void main(List<String> args) {
  runApp(myApp());
}

// test
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
    return MaterialApp(
      home: HomePage(),
    );
  }
}
