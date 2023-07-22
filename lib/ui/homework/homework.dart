import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  late AnimationController animationController;
  late Animation sizeAnimation;

  @override
  void initState() {
    fetch();
    super.initState();
  }

  fetch(){
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              children: [
                FlutterLogo(),
                Row(children: [FlutterLogo(),FlutterLogo(),],),
                FlutterLogo(),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },

      ),
    );
  }
}
