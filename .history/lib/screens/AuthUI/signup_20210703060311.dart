import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart'; 
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:kindergarten/screens/shared/dashed_botton.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:provider/provider.dart';


//local
import '../AuthUI/text_field_lables.dart'; 
import 'data_entry.dart';
import 'header.dart';
import 'or_line.dart';
import 'other_auth_method.dart';
import 'sign_method_change.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<TextFieldLables> loginTextFieldLables = [
     TextFieldLables(
       lable:  "Name",
       hint: "Enter your name",
     ),
     TextFieldLables(
       lable:  "Email",
       hint: "Example@gmail.com",
     ),
     TextFieldLables(
       lable: "Password",
       hint:  "Enter your password",
     ),
  ];

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
            padding: EdgeInsets.symmetric(horizontal: 0.0507*_width,vertical: _height*0.03911),
            child: Wrap(
              runSpacing: 0.022*_height,
              runAlignment: WrapAlignment.spaceBetween, 
                  children: [ 
            Header(
              title: 'Create Account',
              subtitle: "Fill your identity or continue with social media",
            ),
            DataEntry(loginTextFieldLables: loginTextFieldLables ),
            SizedBox(
              height: _height*0.0246,
            ),
      DashedButton(
        ontap:  () async { 
                Navigator.pushAndRemoveUntil(
                    context,
                    OnBoardingPageRoute(
                      duration: 1000,
                        widget:      MyHomePage( ),
                        myAnimation: Curves.elasticInOut),
                    (route) => false);
              },
        title: 'SignUp',
      ),
          Center(child: OrLine()),
            SizedBox(
              height: _height*0.0246,
            ),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 0.157005*_width,
              direction: Axis.horizontal,
            children: [
      OtherAuthMethod(
        imageURL: "assets/images/signin/fb.svg",
        ontap: (){
            final _authData = Provider.of<AuthData>(context,listen: false);
            print(_authData.email);
            print(_authData.password);
        },
       ),
      OtherAuthMethod(
        imageURL: "assets/images/signin/google.svg",
        ontap: (){},
       ),
            ],
            ),
          ),
          
      Center(
        child: SignMethodChange(
          currentWidget: "Sign Up",
        ),
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
