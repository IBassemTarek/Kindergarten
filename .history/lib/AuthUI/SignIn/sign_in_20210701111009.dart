import 'package:flutter/material.dart';
import 'package:kindergarten/shared/custom_text_form.dart';

import '../../settings.dart';

class SignIn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return  Scaffold(
      
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0507*_width),
            child: Container(
              color: Colors.black,
              child: Column(
                
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
              ),
Wrap(
  direction: Axis.vertical,
  spacing: 0.0334*_height,
  children: [
        DataEntry(
    
      hint: "Example@gmail.com",
    
      lable:  "Email",
    
    ),
DataEntry(
  hint: "Enter your password",
  lable:  "Password",
                    )

  ],
),
Container(
  alignment: Alignment.bottomRight,
  color: Colors.blue,
  height: 0.030134*_height,
  child: Text('Forget password ?',textAlign: TextAlign.right,style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),))

        ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}

class DataEntry extends StatelessWidget {
  final String lable;
  final String hint;
  DataEntry({required this.hint,required this.lable});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Wrap(
              spacing: 0.0078125*_height,
              direction: Axis.vertical,
              children: [
                Text(lable,style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 21)),
                Container(
                  width: _width * 0.90338,
                  height: _height*0.0692,
                  child: CustomTextFormField(
                    lable: hint,
                    title: lable,
                  ),
                ),
              ],
            );
  }
}