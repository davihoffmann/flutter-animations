import 'package:app_animations/screens/home/home_screen.dart';
import 'package:app_animations/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations',
      home: HomeScreen(),
    );
  }
}
