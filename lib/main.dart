import 'package:app_animations/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations with Flutter',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(247, 64, 106, 1.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light
      ),
      home: LoginScreen(),
    );

    // return AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: const SystemUiOverlayStyle(
    //     // For Android.
    //     // Use [light] for white status bar and [dark] for black status bar.
    //     statusBarIconBrightness: Brightness.light,
    //     // For iOS.
    //     // Use [dark] for white status bar and [light] for black status bar.
    //     statusBarBrightness: Brightness.dark,
    //   ),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Animations',
    //     home: LoginScreen(),
    //   ),
    // );
  }
}
