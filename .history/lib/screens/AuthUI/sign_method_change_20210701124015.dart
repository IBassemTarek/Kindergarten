
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/AuthUI/sign_in.dart';
import 'package:kindergarten/screens/AuthUI/signup.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';

import '../../settings.dart';

class SignMethodChange extends StatelessWidget {
   final String currentWidget;
   
    SignMethodChange({required this.currentWidget});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Wrap(
          spacing: _width * 0.005,
          children: [
            Text("Don't have an account?",
                style: Theme.of(context).textTheme.subtitle2?.copyWith(color: kColor2)),
            InkWell(
              onTap: (){
                if (currentWidget == "Sign Up")
                Navigator.pushAndRemoveUntil(
                      context,
                      OnBoardingPageRoute(
                        duration: 1000,
                          widget:      SignIn(),
                          myAnimation: Curves.elasticInOut),
                      (route) => false);
                else
                Navigator.pushAndRemoveUntil(
                      context,
                      OnBoardingPageRoute(
                        duration: 1000,
                          widget:      SignUp(),
                          myAnimation: Curves.elasticInOut),
                      (route) => false);
              },
              child: Text(currentWidget == "Sign Up"?"Sign In" :"Sign Up",
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: kColor2, fontSize: 14)),
            )
          ],
        );
  }
}






