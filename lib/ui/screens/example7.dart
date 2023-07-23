import 'package:flutter/material.dart';

class ExampleSeven extends StatefulWidget {
  const ExampleSeven({super.key});

  @override
  State<ExampleSeven> createState() => _ExampleSevenState();
}

class _ExampleSevenState extends State<ExampleSeven> {
  bool first = true;
  double fontSize = 60;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDefaultTextStyle"),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: FontWeight.bold
          ),
          child: Text(
            "Flutterni o'rganamiz",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            fontSize = first ? 70 : 25;
            color = first ? Colors.blue : Colors.red;
            first = ! first;
          });
        },
        child: Text("Press!"),
      ),
    );
  }
}
