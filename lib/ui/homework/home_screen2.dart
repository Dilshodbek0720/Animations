import 'package:flutter/material.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> with TickerProviderStateMixin {
  bool isText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: isText ? Colors.amber : Colors.green,
              ),
              child: Center(
                child: Text(isText ? "This is First Widget" : "This is Second Widget")
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                isText = !isText;
              });
            }, child: Text(
              "Click here"
            ))
          ],
        ),
      ),
    );
  }
}
