import 'dart:async';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:provider/provider.dart';


//local
import 'AuthUI/sign_in.dart';
import 'Onboarding/onboarding_screen.dart'; 
import '../../settings.dart';
import 'models/AuthData/auth_data.dart';
import 'models/AuthVisible/auth_visible.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindergarten',
      theme: textData, 
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget { 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  late bool firstRun;
Future<bool> isFirstTime() async {
  firstRun = await IsFirstRun.isFirstRun(); 
  return  firstRun;     
} 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
 future: isFirstTime(),
 builder: (ctx,snapshot) {
       if (snapshot.hasData) {
      return firstRun?
      MultiProvider(
      providers: [
              ChangeNotifierProvider<Visible>(
          create: (context) => Visible(),
        ),
              ChangeNotifierProvider<AuthData>(
          create: (context) => AuthData(),
        )
        ],
        child: SignIn()):
      OnBoarding();
    } else { 
      return Container(color:Colors.white);
    }
 
 });
    
  }
}
