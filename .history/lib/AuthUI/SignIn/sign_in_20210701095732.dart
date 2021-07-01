import 'package:flutter/material.dart';

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
          Align(
          alignment: Alignment.centerRight,
          child: Image.asset('assets/images/signin/Vector-mid.png',width: 0.4213*_width )
          ),
          Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset('assets/images/signin/Vector-bot.png',height:0.140625*_height)
          ),
          Wrap(
        children: [
          Wrap(
            children: [
              Text("Welcome back",style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21)),
              Text("Fill your Email and Password or continue with social media",style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 21))
            ],
          )
        ],
          )
          ],
        ),
      ),
    );
  }
}