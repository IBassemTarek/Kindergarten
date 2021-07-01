import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../settings.dart';

class SignIn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      
      body: SafeArea(
        child: Stack(
          children: [
          Transform(
            transform: Matrix4.rotationY(math.pi),
            child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/signin/Vector-mid.png',width: 0.4213*_width )
            ),
          ),
          Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset('assets/images/signin/Vector-bot.png',height:0.140625*_height)
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0507*_width),
            child: Wrap(
        children: [
            Wrap(
              direction: Axis.vertical,
              spacing: 0.0123*_height,
              children: [
                Text("Welcome back",style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21)),
                Container(
                  width: 0.5676*_width,
                  child: Text("Fill your Email and Password or continue with social media",style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14)))
              ],
            )
        ],
            ),
          )
          ],
        ),
      ),
    );
  }
}