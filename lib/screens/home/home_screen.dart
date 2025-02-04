import 'package:app_animations/screens/home/widget/stagger_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    
    return StaggerAnimation(
      controller: _controller,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
