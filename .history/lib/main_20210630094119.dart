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
  late bool firstRun = true;
Future<bool> isFirstTime() async {
  print(await IsFirstRun.isFirstRun());
  // print(firstRun);
  return  firstRun;     
} 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
 future: IsFirstRun.isFirstRun(),
 builder: (ctx,snapshot) {
 return firstRun?OnBoardingScreen():MyHomePage(title: 'Flutter Demo Home Page');
 });
    
  }
}
