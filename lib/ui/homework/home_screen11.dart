import 'package:flutter/material.dart';

class HomeScreen11 extends StatefulWidget {
  const HomeScreen11({super.key});

  @override
  State<HomeScreen11> createState() => _HomeScreen10State();
}

class _HomeScreen10State extends State<HomeScreen11> with TickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController controller;

  void init(){
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 12.0, end: 50.0).animate(controller)
      ..addListener(() {
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
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter - tutorialart.com"),
      ),
      body: ListView(children: <Widget>[
        AnimatedContainer(
          duration: Duration(seconds: 2),
            curve: Curves.linear,
            margin: EdgeInsets.all(20),
            child: Text(
              'Hello! Welcome to TutorialKart. We shall zoom this text when you long press on it.',
              style: TextStyle(fontSize: animation.value),
            )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                init();
              });
            },
            child: Text('Bigger Font'),
          ),
        )
      ]),
    );
  }
}
