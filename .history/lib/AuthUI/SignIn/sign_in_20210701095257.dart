import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      
      body: Stack(
        children: [
    Align(
    alignment: Alignment.centerRight,
    child: Image.asset('assets/images/signin/Vector-mid.png',width: 0.4613*_width,height:0.481*_height)
    ),
        Align(
    alignment: Alignment.bottomLeft,
    child: Image.asset('assets/images/signin/Vector-bot.png',height:0.2*_height)
    ),
        ],
      ),
    );
  }
}