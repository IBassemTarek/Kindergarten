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
import 'or_line.dart';

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
      OtherAuthMethod( ),
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

class OtherAuthMethod extends StatelessWidget {
  final void Function()? ontap;
  final String imageURL;
  OtherAuthMethod({required this.imageURL,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height; 
    return InkWell(
      onTap: ontap,
      child: Container(
              height: _height * 0.0558,
              width:  _height * 0.0558,
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                             color: Colors.white,
            ),  
                //"assets/images/signin/google.svg"
              child:  RoundedRectBorderWidget( 
                typeDashNumber:  TypeDashNumber.Small,
                child:  Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                          imageURL,
                        )
              ),)
            ),
    );
  }
}



