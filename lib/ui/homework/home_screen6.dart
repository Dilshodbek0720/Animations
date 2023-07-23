import 'package:flutter/material.dart';

class HomeScreen6 extends StatefulWidget {
  const HomeScreen6({super.key});

  @override
  State<HomeScreen6> createState() => _HomeScreen6State();
}

class _HomeScreen6State extends State<HomeScreen6> {
  double textFontSize = 30;
  Color color = Colors.blue;

  _update({required double size, required Color textColor}){
    textFontSize = size;
    color = textColor;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedDefaultTextStyle"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          AnimatedDefaultTextStyle(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Hello Flutter World!",
                  textAlign: TextAlign.center,
                ),
              ),
              style: TextStyle(
                fontSize: textFontSize,
                color: color,
                fontWeight: FontWeight.w500
              ),
              duration: Duration(seconds: 1)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white10,
                    ),
                    onPressed: (){
                  _update(size: 50, textColor: Colors.red);
                }, child: Icon(Icons.play_arrow)),
                SizedBox(width: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                primary: Colors.white10,
                ),
                    onPressed: (){
                  _update(size: 30, textColor: Colors.blue);
                }, child: Icon(Icons.refresh)),
              ],
            )
        ],),
      ),
    );
  }
}
