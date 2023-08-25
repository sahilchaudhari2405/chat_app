import 'package:chatapp/screen/login.dart';
// import 'package:chatapp/screen/signup.dart';
import 'package:flutter/material.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login_screeen(),
    );
  }
}
