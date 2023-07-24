import 'package:flutter/material.dart';

class HomeScreen17 extends StatefulWidget {
  const HomeScreen17({super.key});

  @override
  State<HomeScreen17> createState() => _HomeScreen17State();
}

class _HomeScreen17State extends State<HomeScreen17> with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<Decoration> decorationAnimation;

  void init(){
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    decorationAnimation = DecorationTween(
      begin: BoxDecoration(

      ),
      end: BoxDecoration(

      ),
    ).animate(controller);
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
      appBar: AppBar(),
      body: Column(
        children: [
          DecoratedBoxTransition(
            decoration: decorationAnimation,
            child: Container(
              width: 300,
              height: 300,
              child: FlutterLogo(),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 100),
          child: ElevatedButton(
            onPressed: (){

            },
            child: Text("Click Me", style: TextStyle(
              color: Colors.blue
            ),),
          ),
          )
        ],
      )
    );
  }
}
