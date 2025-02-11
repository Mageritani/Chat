import 'package:chat/auth/LoginOrRegister.dart';
import 'package:chat/home.dart';
import 'package:chat/login.dart';
import 'package:chat/register.dart';
import 'package:chat/theme/theme.light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: loginOrRegister()
    );
  }
}