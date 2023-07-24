import 'package:flutter/material.dart';

class HomeScreen13 extends StatefulWidget {
  const HomeScreen13({super.key});

  @override
  State<HomeScreen13> createState() => _HomeScreen13State();
}

class _HomeScreen13State extends State<HomeScreen13> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Decoration> decorationTween;

  init(){
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    decorationTween = DecorationTween(
      begin: BoxDecoration(
        color: Colors.amber,
        border: Border.all(width: 7, color: Colors.deepOrangeAccent),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 8,
            blurRadius: 8,
        )
        ]
      ),
      end: BoxDecoration(
          color: Colors.purple,
          border: Border.all(width: 45, color: Colors.red),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(12,12)
            )
          ]
      ),
    ).animate(controller);
    controller.repeat(reverse: true);
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween,
          child: Container(
            width: 250,
            height: 250,
          ),
        ),
      )
    );
  }
}
