import 'package:flutter/material.dart';

class HomeScreen14 extends StatefulWidget {
  const HomeScreen14({super.key});

  @override
  State<HomeScreen14> createState() => _HomeScreen14State();
}

class _HomeScreen14State extends State<HomeScreen14> with TickerProviderStateMixin{
  bool isOne = false;
  bool isTwo = false;

  Alignment alignmentOne = Alignment.topLeft;
  Alignment alignmentTwo = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple"),),
      body: Container(
        color: Colors.amber,
        child: Stack(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  alignmentOne = alignmentOne == Alignment.topLeft
                      ? Alignment.bottomRight
                      : Alignment.topLeft;

                  alignmentTwo = alignmentTwo == Alignment.bottomRight
                      ? Alignment.topLeft
                      : Alignment.bottomRight;
                  isTwo = !isTwo;
                  Future.delayed(const Duration(seconds: 3))
                      .then((value) {
                    setState(() {
                      isTwo = !isTwo;
                    });
                  });
                });
              },
              child: AnimatedOpacity(
                opacity: isOne ? 0 : 1,
                duration: Duration(seconds: 0),
                child: AnimatedAlign(
                  duration: Duration(seconds: 3),
                  alignment: alignmentOne,
                  child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
                ),
              ),),
            GestureDetector(
              onTap: (){
                setState(() {
                  alignmentOne = alignmentOne == Alignment.topLeft
                      ? Alignment.bottomRight
                      : Alignment.topLeft;

                  alignmentTwo = alignmentTwo == Alignment.bottomRight
                      ? Alignment.topLeft
                      : Alignment.bottomRight;
                  isOne =! isOne;
                  Future.delayed(const Duration(seconds: 3))
                      .then((value) {
                    setState(() {
                      isOne = !isOne;
                    });
                  });
                });
              },
              child: AnimatedOpacity(
                opacity: isTwo ? 0 : 1,
                duration: Duration(seconds: 0),
                child: AnimatedAlign(
                  duration: Duration(seconds: 3),
                  alignment: alignmentTwo,
                  child: Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
