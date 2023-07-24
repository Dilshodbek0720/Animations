import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen16 extends StatefulWidget {
  const HomeScreen16({super.key});

  @override
  State<HomeScreen16> createState() => _HomeScreen16State();
}

class _HomeScreen16State extends State<HomeScreen16> with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> angleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));

    angleAnimation = Tween<double>(begin: 0, end: 2*pi).animate(controller)..addListener(() {
      setState(() {
      });
    });
    scaleAnimation = Tween<double>(begin: 0, end: 6).animate(controller)..addListener(() {
      setState(() {

      });
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double circleSize = 10 * scaleAnimation.value;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Transform.rotate(angle: angleAnimation.value,
        child: Container(
          width: circleSize*2,
          height: circleSize*2,
          child: Column(
            children: [
              Row (
                children: <Widget>[
          Container(
            width: circleSize,
            height: circleSize,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Row (
                children: <Widget>[
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
