import 'package:flutter/material.dart';

class HomeScreen5 extends StatefulWidget {
  const HomeScreen5({super.key});

  @override
  State<HomeScreen5> createState() => _HomeScreen5State();
}

class _HomeScreen5State extends State<HomeScreen5> {
  double padding = 10;

  _update({required double value}){
    setState(() {
      padding = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding and Oppocity"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            _update(value: padding == 10 ? 80 : 10);
          },
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(horizontal: padding),
            curve: Curves.linear,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
