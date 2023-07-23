import 'package:flutter/material.dart';

class HomeScreen9 extends StatefulWidget {
  const HomeScreen9({super.key});

  @override
  State<HomeScreen9> createState() => _HomeScreen9State();
}

class _HomeScreen9State extends State<HomeScreen9> with TickerProviderStateMixin{
  double size = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Woolha Example"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: AnimatedSize(
              duration: Duration(seconds: 2),
              child: Container(
                width: size,
                height: size,
                child: Image.network("https://www.woolha.com/media/2021/05/woolha-250x250.jpg"),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              size = size == 150 ? 250 : 150;
            });
          } , child: Text('Chamge Size'))
        ],),
      ),
    );
  }
}
