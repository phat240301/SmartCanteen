import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/HomeScreen.dart';
import 'package:smart_canteen/UI/LoginScreen.dart';
import 'package:smart_canteen/UI/SignUpScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


