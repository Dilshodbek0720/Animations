import 'package:flutter/material.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({super.key});

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> with TickerProviderStateMixin{
  late AnimationController animationController;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  late Animation borderAnimation;

  @override
  void initState() {
    super.initState();

    animationController  = AnimationController(vsync: this, duration: Duration(seconds: 2));

    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(animationController);

    sizeAnimation = Tween<double>(begin: 100, end: 300).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.bounceIn,
    reverseCurve: Curves.bounceIn))..addListener(() {setState(() {

    });});
    borderAnimation = Tween<double>(begin: 5, end: 50).animate(animationController);

    animationController.addListener(() {
      setState(() {

      });
    });

    animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          decoration: BoxDecoration(
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(borderAnimation.value),
          ),
        ),
      ),
    );
  }
}
