import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen12 extends StatefulWidget {
  const HomeScreen12({super.key});

  @override
  State<HomeScreen12> createState() => _HomeScreen12State();
}

class _HomeScreen12State extends State<HomeScreen12> with TickerProviderStateMixin{
  late AnimationController controller;

  void init(){
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    )..addListener(() {
      setState(() {
      });
    });
    controller.forward();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            height: 100,
              width: 100,
              duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(Random().nextInt(0xFFFFFFFF))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearProgressIndicator(
              minHeight: 35,
              color: Colors.blue,
              backgroundColor: Colors.blue.withOpacity(0.3),
              value: controller.value,
            ),
          ),
          Text(controller.value == 1 ? "Done" :"${(controller.value*100).round()} %"),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: ElevatedButton(onPressed: (){
              init();
            }, child: Center(child: Text("Animate"),)),
          )
        ],
      ),
    );
  }
}
