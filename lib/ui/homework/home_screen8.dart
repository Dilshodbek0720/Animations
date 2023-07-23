import 'package:flutter/material.dart';

class HomeScreen8 extends StatefulWidget {
  const HomeScreen8({super.key});

  @override
  State<HomeScreen8> createState() => _HomeScreen8State();
}

class _HomeScreen8State extends State<HomeScreen8> {
  AlignmentGeometry alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Tutorial"),),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.black26,
              child: AnimatedAlign(
                duration: Duration(seconds: 3),
                curve: Curves.bounceInOut,
                alignment: alignment,
                child: Container(
                  color: Colors.teal,
                  child: const Text('Woolha.com', style: TextStyle(color: Colors.white)),
                ),
              ),
          ),
          TextButton(onPressed: (){
            setState(() {
              alignment = alignment == Alignment.topLeft
                  ? Alignment.bottomRight
                  : alignment = Alignment.topLeft;
            });
          }, child: Text(
            "Change Alignment",
            style: TextStyle(
              color: Colors.blue
            ),
          ))
        ],),
      ),
    );
  }
}
