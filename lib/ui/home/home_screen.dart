import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> routeHome = [
    homeScreenOne,
    homeScreenTwo,
    homeScreenThree,
    homeScreenFour,
    homeScreenFive,
    homeScreenSix,
    homeScreenSeven,
    homeScreenEight,
    homeScreenNine,
    homeScreenTen,
    homeScreenEleven,
    homeScreen12,
    homeScreen13,
    homeScreen14,
    homeScreen15,
    homeScreen16,
    homeWorkScreen,
  ];

  List<String> routeNames = [
    firstScreenRoute,
    secondScreenRoute,
    thirdScreenRoute,
    fourthScreenRoute,
    fifthScreenRoute,
    sixthScreenRoute,
    seventhScreenRoute,
    eighthScreenRoute,
    ninthScreenRoute,
    tenthScreenRoute,
    eleventhScreenRoute,
    twelveScreenRoute,
    thirteenScreenRoute,
    fourteenScreenRoute,
    fifteenScreenRoute,
    sixteenScreenRoute,
    seventeenthScreenRoute,
    eighteenthScreenRoute,
    nineteenthScreenRoute,
    twentyScreenRoute,
    twentyFirstScreenRoute,
    twentySecondScreenRoute
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(routeHome.length, (index) => ListTile(
              title: Text("Homework ${index+1}"),
              onTap: (){
                Navigator.pushNamed(context, routeHome[index]);
              },
            )),
            ...List.generate(
              routeNames.length,
                  (index) => ListTile(
                title: Text("Example ${index + 1}"),
                onTap: () {
                  Navigator.pushNamed(context, routeNames[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myButton(VoidCallback onTap) => Container(
    margin: const EdgeInsets.all(16),
    child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(backgroundColor: Colors.red),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            //color: Colors.blue,
            borderRadius: BorderRadius.circular(32),
          ),
          child: const Center(
            child: Text(
              "Task screen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )),
  );
}