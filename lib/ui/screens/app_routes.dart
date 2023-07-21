import 'package:animations/ui/homework/home_screen1.dart';
import 'package:animations/ui/homework/home_screen2.dart';
import 'package:animations/ui/homework/home_screen3.dart';
import 'package:animations/ui/homework/home_screen4.dart';
import 'package:animations/ui/screens/example_five.dart';
import 'package:animations/ui/screens/example_four.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'example_one.dart';
import '../home/home_screen.dart';
import 'example_three.dart';
import 'example_two.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case homeScreenOne:
        return MaterialPageRoute(builder: (_) => HomeScreenOne());
      case homeScreenTwo:
        return MaterialPageRoute(builder: (_) => HomeScreenTwo());
      case homeScreenThree:
        return MaterialPageRoute(builder: (_) => HomeScreenThree());
      case homeScreenFour:
        return MaterialPageRoute(builder: (_) => HomeScreenFour());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleOne());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwo());
      case thirdScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThree());
      case fourthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFour());
      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFive());
      // case sixthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSix());
      // case seventhScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSeven());
      // case eighthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleEight());
      // case ninthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleNine());
      // case tenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleTen());
      // case eleventhScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleEleven());
      // case twelveScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleTwelve());
      // case thirteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleThirteen());
      // case fourteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExplicitFourteen());
      // case fifteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleFifteen());
      // case sixteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSixteen());
      // case seventeenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSeventeen());
      // case eighteenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleEighteen());
      // case nineteenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example19());
      // case twentyScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example20());
      // case twentyFirstScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example21());
      // case taskScreenRoute:
      //   return MaterialPageRoute(builder: (_) => TaskScreen());
      //
      // case twentySecondScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example22());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}