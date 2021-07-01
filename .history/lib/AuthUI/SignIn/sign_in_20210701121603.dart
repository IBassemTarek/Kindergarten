import 'package:flutter/material.dart';

//local
import '../../AuthUI/SignIn/text_field_lables.dart';
import '../../shared/dashed_botton.dart'; 
import '../../shared/pageRouteAnimation.dart';
import 'data_entry.dart';
import 'header.dart';
import 'or_line.dart';
import 'other_auth_method.dart';

class SignIn extends StatelessWidget {
  static List<TextFieldLables> loginTextFieldLables = [
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
            padding: EdgeInsets.symmetric(horizontal: 0.0507*_width),
            child: Container( 
              child: Column(
                    children: [
              Header(),
              DataEntry(loginTextFieldLables: loginTextFieldLables ),
              Container(
                  alignment: Alignment.bottomRight,
                  height: 0.030134*_height,
                  child: Text('Forget password ?',textAlign: TextAlign.right,style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),)),
      DashedButton(
        ontap:  () async { 
                  Navigator.pushAndRemoveUntil(
                      context,
                      OnBoardingPageRoute(
                        duration: 1000,
                          widget:      SignIn() ,
                          myAnimation: Curves.elasticInOut),
                      (route) => false);
                },
        title: 'login',
      ),
          OrLine(),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 0.157005*_width,
            direction: Axis.horizontal,
          children: [
      OtherAuthMethod(
        imageURL: "assets/images/signin/fb.svg",
        ontap: (){},
       ),
      OtherAuthMethod(
        imageURL: "assets/images/signin/google.svg",
        ontap: (){},
       ),
          ],
          ),
      SignMethodChange()
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

class SignMethodChange extends StatelessWidget {
   final String currentWidget;
   
    SignMethodChange({required this.currentWidget});
  @override
  Widget build(BuildContext context) {
    return Wrap(
          spacing: _width * 0.005,
          children: [
            Text("Don't have an account?",
                style: Theme.of(context).textTheme.bodyText1),
            InkWell(
              onTap: (){
                if (currentWidget == "Sign Up")
                Get.off(LoginScreen());
                else 
                Get.off(SignUpScreen());
              },
              child: Text(currentWidget == "Sign Up"?"Sign In" :"Sign Up",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: kColor5, fontSize: 14)),
            )
          ],
        );
  }
}






