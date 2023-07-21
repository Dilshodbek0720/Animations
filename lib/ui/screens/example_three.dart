import 'package:flutter/material.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned"),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: [
              AnimatedPositioned(
                width: selected ? 200 : 100,
                  height: selected ? 50 : 200,
                  top: selected ? 50 : 150,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.red
                      ),
                      child: Center(
                        child: Text(
                          'Tap me, Tapped:$selected',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
