import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//local
import '../../AuthUI/SignIn/text_field_lables.dart';
import '../../shared/dashed_botton.dart'; 
import '../../shared/rounded_rect_border.dart';
import '../../shared/pageRouteAnimation.dart';
import '../../settings.dart'; 
import 'data_entry.dart';
import 'header.dart';

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
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 0.01449*_width,
            direction: Axis.horizontal,
            children: [
              Container(
                width: 0.38*_width,
                child: Divider(
                  color: kColor1,
                )),
              Text('Or',style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14,color: kColor1)),
              Container(
                width: 0.38*_width,
                child: Divider(
                  color: kColor1,
                )),
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 0.157005*_width,
            direction: Axis.horizontal,
          children: [
      Container(
              height: _height * 0.0558,
              width:  _height * 0.0558,
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                             color: Colors.white,
            ),  
                
              child:  RoundedRectBorderWidget( 
                typeDashNumber:  TypeDashNumber.Small,
                child:  Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                          "assets/images/signin/fb.svg",
                        )
                  
              ),
            ),),
      Container(
              height: _height * 0.0558,
              width:  _height * 0.0558,
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                             color: Colors.white,
            ),  
                
              child:  RoundedRectBorderWidget( 
                typeDashNumber:  TypeDashNumber.Small,
                child:  Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                          "assets/images/signin/google.svg",
                        )
              ),)
            ),
          ],
          )
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

