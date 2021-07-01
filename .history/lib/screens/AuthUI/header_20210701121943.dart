
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 0.0123*_height,
        children: [
          Text("Welcome back",style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21)),
          Container(
            width: 0.5676*_width,
            child: Text("Fill your Email and Password or continue with social media",style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14)))
        ],
      ),
    );
  }
}