import 'package:flutter/material.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  bool isBigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              height: isBigger ? 300 : 100,
              width: isBigger ? 300 : 100,
              duration: Duration(seconds: 3),
              curve: Curves.bounceIn,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.5,
                  colors: [
                    Colors.green,
                    Colors.white
                  ],
                  stops: [isBigger ? 0.8 : 0.2,1.0]
                )
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
              child: Image.asset("assets/images/car.png"),),
            ),
          ),
          TextButton(
              onPressed: () {
                isBigger = !isBigger;
                setState(() {});
              },
              child:
              isBigger ? const Text("Decrease") : const Text("Increase"))
        ],
      ),
    );
  }
}
