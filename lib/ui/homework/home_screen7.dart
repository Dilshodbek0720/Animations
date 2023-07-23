import "package:flutter/material.dart";

class HomeScreen7 extends StatefulWidget {
  const HomeScreen7({super.key});

  @override
  State<HomeScreen7> createState() => _HomeScreen7State();
}

class _HomeScreen7State extends State<HomeScreen7> {
  bool isOpacity = true;

  update(){
    setState(() {
      isOpacity = isOpacity ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Demo"),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: isOpacity ? 1 : 0,
          curve: Curves.linear,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          update();
        },
        child: Icon(Icons.flip),
      ),
    );
  }
}
