import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:kindergarten/models/modalprogrsshub.dart';
import 'package:kindergarten/screens/AuthUI/sign_in.dart';
import 'package:kindergarten/screens/AuthUI/signup.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:provider/provider.dart';

import '../../settings.dart';

class SignMethodChange extends StatelessWidget {
  final String currentWidget;

  SignMethodChange({required this.currentWidget});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: Locales?.currentLocale(context).toString() == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Wrap(
        spacing: _width * 0.005,
        children: [
          LocaleText(
              currentWidget == "Sign Up"
                  ? "Have an account? "
                  : "Don't have an account? ",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: kColor2)),
          InkWell(
            onTap: () {
              if (currentWidget == "Sign Up")
                Navigator.pushReplacement(
                  context,
                  OnBoardingPageRoute(
                      duration: 1000,
                      widget: MultiProvider(providers: [
                        ChangeNotifierProvider<Visible>(
                          create: (context) => Visible(),
                        ),
                        ChangeNotifierProvider<AuthData>(
                          create: (context) => AuthData(),
                        ),
                        ChangeNotifierProvider<ModelHub>(
                          create: (context) => ModelHub(),
                        )
                      ], child: SignIn()),
                      myAnimation: Curves.elasticInOut),
                );
              else
                Navigator.pushReplacement(
                  context,
                  OnBoardingPageRoute(
                      duration: 1000,
                      widget: MultiProvider(providers: [
                        ChangeNotifierProvider<Visible>(
                          create: (context) => Visible(),
                        ),
                        ChangeNotifierProvider<AuthData>(
                          create: (context) => AuthData(),
                        ),
                        ChangeNotifierProvider<ModelHub>(
                          create: (context) => ModelHub(),
                        )
                      ], child: SignUp()),
                      myAnimation: Curves.elasticInOut),
                );
            },
            child: LocaleText(currentWidget == "Sign Up" ? "SignIn" : "SignUp",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: kColor2, fontSize: 14)),
          )
        ],
      ),
    );
  }
}
