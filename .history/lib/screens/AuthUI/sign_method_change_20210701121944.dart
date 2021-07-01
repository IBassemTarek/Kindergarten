
import 'package:flutter/material.dart';

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
                 print('dd');
                else
                print('dd');
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






