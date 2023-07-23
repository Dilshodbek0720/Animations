import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    fetch();
    fetchButton();
    super.initState();
  }

  fetch() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 2*pi).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ))..addListener(() {
      setState(() {

      });
    });
    animationController.forward();
  }

  fetchButton() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    sizeAnimation = Tween<double>(begin: 20, end: 40).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn
    ))..addListener(() {
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Transform.rotate(
            angle: animation.value,
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 320,
              child: Column(
                children: [
                  FlutterLogo(size: 100),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      FlutterLogo(
                        size: 100,
                      ),
                      Spacer(),
                      FlutterLogo(
                        size: 100,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  FlutterLogo(
                    size: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            fetch();
            fetchButton();
          });
        },
        child: Icon(Icons.person_add, size: sizeAnimation.value,),
      ),
    );
  }
}
