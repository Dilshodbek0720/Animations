import 'package:flutter/material.dart';

class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({super.key});
  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {
  Map<int, dynamic> setting = {
    0:[100.0,100.0,20.0,Colors.green],
    1:[350.0,50.0,25.0,Colors.purple],
    2:[160.0,70.0,24.0,Colors.blue],
    3:[100.0,200.0,40.0,Colors.black12],
    4:[200.0,200.0,28.0,Colors.tealAccent],
    5:[350.0,200.0,28.0,Colors.orange],
    6:[300.0,160.0,20.0,Colors.purpleAccent],
    7:[300.0,300.0,25.0,Colors.redAccent],
    8:[180.0,180.0,16.0,Colors.tealAccent.withOpacity(0.4)],
  };

  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedContainer(
          height: setting[selectedIndex][0],
          width: setting[selectedIndex][1],
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(setting[selectedIndex][2]),
            color: setting[selectedIndex][3]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: (){
           if(selectedIndex>=setting.length-1){
             setState(() {
               selectedIndex = 0;
             });
           }else{
             setState(() {
               selectedIndex += 1;
             });
           }
         },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
