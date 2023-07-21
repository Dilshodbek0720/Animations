import 'dart:math';

import 'package:flutter/material.dart';

class ExampleFour extends StatefulWidget {
  const ExampleFour({super.key});

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> with TickerProviderStateMixin{
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation animation;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));

    curvedAnimation = CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn
    );
    animation = Tween<double>(begin: 0, end: 2*pi).animate(curvedAnimation);
    animationController..addListener(() {
      setState(() {  });
    });

    animationController.repeat(reverse: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transforsm.rotate"),
      ),
      body: Center(
        child: Transform.rotate(angle: animation.value,
        child: Center(child: Image.asset("assets/images/car.png"),),
        ),
      ),
    );
  }
}
