import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/BottomAppBarDemo.dart';
import 'package:smart_canteen/UI/CartScreen.dart';
import 'package:smart_canteen/UI/HomeScreen.dart';
import 'package:smart_canteen/UI/LoginScreen.dart';
import 'package:smart_canteen/UI/ProfileScreen.dart';
import 'package:smart_canteen/UI/SignUpScreen.dart';

import 'UI/DetailFoodScreen.dart';
import 'UI/ForgotPassScreen.dart';
import 'UI/HomeV2Screen.dart';
import 'UI/MenuScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}


