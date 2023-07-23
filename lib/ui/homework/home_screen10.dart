import 'package:flutter/material.dart';

class HomeScreenTen extends StatefulWidget {
  const HomeScreenTen({super.key});

  @override
  State<HomeScreenTen> createState() => _HomeScreenTenState();
}

class _HomeScreenTenState extends State<HomeScreenTen> with TickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Decoration> decorationTween;


  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat(reverse: true);
    decorationTween = DecorationTween(
      begin: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.circular(100),
        color: Colors.yellow
      ),
      end: BoxDecoration(
        border: Border.all(width: 24, color: Colors.red),
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue
      )
    ).animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kindacode"),),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween,
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
