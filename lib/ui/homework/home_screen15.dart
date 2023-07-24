import 'package:animations/ui/homework/widgets/login_screen.dart';
import 'package:animations/ui/homework/widgets/register_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen15 extends StatefulWidget {
  const HomeScreen15({super.key});

  @override
  State<HomeScreen15> createState() => _HomeScreen15State();
}

class _HomeScreen15State extends State<HomeScreen15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Hero(tag: "tag", child: Icon(Icons.flash_on, color: Colors.amber,size: 80,),),
              SizedBox(width: 10,),
              Text("Flash Chat", style: TextStyle(
                fontSize: 40
              ),)
            ],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }));
              }, child: Center(child: Text("Login in"),)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RegisterScreen();
                }));
              }, child: Center(child: Text("Register"),)),
            ),
          ],
        ),
      ),
    );
  }
}
