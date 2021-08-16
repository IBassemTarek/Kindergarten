import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/drawer_scalling.dart';
import 'package:kindergarten/models/user_model.dart';
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:kindergarten/services/users.dart';
import 'package:provider/provider.dart';

import '../../settings.dart';

class SkipNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            OnBoardingPageRoute(
                duration: 1000,
                widget: MultiProvider(providers: [
                  StreamProvider<UserModel>.value(
                    value: AuthService().user,
                    initialData: UserModel(id: ""),
                  ),
                  StreamProvider<UserData>.value(
                    value: ProfileDataBaseServices().initchildData(),
                    initialData: UserData(name: 'Name'),
                  ),
                  ChangeNotifierProvider<DrawerScalling>(
                    create: (context) => DrawerScalling(),
                  )
                ], child: MyHomePage()),
                myAnimation: Curves.elasticInOut),
          );
        },
        child: LocaleText("Skip Now",
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: kColor2, fontSize: 14)),
      ),
    );
  }
}
