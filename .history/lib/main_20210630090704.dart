import 'dart:async';

import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'Home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart'as SharedPref;

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
  Future<bool> isFirstTime() async {
     var isFirstTime = SharedPref.pref.getBool('first_time');
     if (isFirstTime != null && !isFirstTime) {
       SharedPref.pref.setBool('first_time', false);
       return false;
     } else {
       SharedPref.pref.setBool('first_time', false);
       return true;
     }
  }
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () async {
    bool firstRun = await IsFirstRun.isFirstRun();  
    firstRun ? print("First time") : print("Not first time");
    }
   );
  }

  @override
  Widget build(BuildContext context) {

    return MyHomePage(title: 'Flutter Demo Home Page');
  }
}
