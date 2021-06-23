import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app Login',
      home: Login(),
    );
  }
}
