import 'package:flutter/material.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({super.key});

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {

  double topAnimated = 150;
  double leftAnimated = 150;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height*0.7,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      child: Container(width: 70, height: 70, color: Colors.red,),
                      top: topAnimated,
                      left: leftAnimated,
                      duration: Duration(milliseconds: 100))
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    topAnimated -= 30;
                  });
                }, child: Icon(
              Icons.arrow_drop_up
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        leftAnimated -= 30;
                      });
                    }, child: Icon(
                    Icons.arrow_left_rounded
                )),
                SizedBox(width: 100,),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        leftAnimated += 30;
                      });
                    }, child: Icon(
                    Icons.arrow_right_outlined
                )),
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    topAnimated += 30;
                  });
                }, child: Icon(
                Icons.arrow_drop_down
            ))
          ],
        ),
      ),
    );
  }
}
