import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation = Tween<double>(begin: 0, end: 2 * pi).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Container(
            color: Colors.blue,
            height: 220,
            width: 220,
          )
        ),
      ),
    );
  }
}
