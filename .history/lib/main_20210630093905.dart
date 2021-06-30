import 'dart:async';

import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home/home_page.dart';
import 'Onboarding/onboarding_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  late bool firstRun = false;
  Future<bool> isFirstTime2() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
     var isFirstTime =  pref.getBool('first_time');
     if (isFirstTime != null && !isFirstTime) {
        pref.setBool('first_time', false);
       return false;
     } else {
        pref.setBool('first_time', false);
       return true;
     }
  }


Future<bool> isFirstTime() async {
  bool firstRun = await IsFirstRun.isFirstRun();
  print(firstRun);
  return  firstRun;     
}
  // @override
  // void initState() {
  //   super.initState();
  //   firstRun = await IsFirstRun.isFirstRun();
  //   firstRun?print('first'):print('home');
 
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
 future: isFirstTime(),
 builder: (ctx,snapshot) {
 return firstRun?OnBoardingScreen():MyHomePage(title: 'Flutter Demo Home Page');
 });
    
  }
}
