import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:kindergarten/models/drawer_scalling.dart';
import 'package:kindergarten/models/modalprogrsshub.dart';
import 'package:kindergarten/models/user_model.dart';
import 'package:kindergarten/screens/AuthUI/sign_in.dart';
import 'package:kindergarten/screens/AuthUI/signup.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_items.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:kindergarten/services/users.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';

class DrawerScreen extends StatelessWidget {
  final _auth = AuthService(); 
  @override
  Widget build(BuildContext context) { 
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    final _name = Provider.of<UserData>(context).name;
    final _userModel = Provider.of<UserModel>(context).id;
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return Container(
        padding: EdgeInsets.only(top: 50,bottom: 70,left: 30),
        color:Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
               Wrap(
                 direction: Axis.vertical,
                 spacing: _height*0.0279,
          crossAxisAlignment: WrapCrossAlignment.start,
                 children: [
                   Container(
                     height: 0.06039*_width,
                     width: 0.06039*_width,
                     decoration: BoxDecoration(
                      color: kColor9, 
                      shape: BoxShape.circle,
                     ),
                     child: InkWell(
                      onTap: (){
                        drawerScalling.closeDrawer();
                      },
                      child: Icon(Icons.close ,color: kColor10,size: 15,)),
                   ),
        Row(
          children: [
            LocaleText(
                "Welcome",style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor9),),
                SizedBox(width: _width*0.011,),
                Text("$_name",style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor9),),
          ],
        ), 
        
                 ],
               ), 

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: (Locales.currentLocale(context).toString() == "en"?upperdrawerItemsE:upperdrawerItemsA).map((e) => 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 12),
                child: InkWell(
                  onTap: (){
                    e['function'](context:context);
                  },
                  child: Container(
                    width: _width*0.37,
                    child: Row(
                      children: [
                        Icon(e['icon'],color: kColor9,size: 20,),
                        SizedBox(width: 15,),
                        Text(e['title'],style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              )
              
              ).toList(),
              
            ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:8.0),
                child: InkWell(
                    onTap: () {
                      if (Locales?.currentLocale(context).toString() == "en")
                        LocaleNotifier.of(context)?.change("ar");
                      else
                        LocaleNotifier.of(context)?.change("en");
                    },
                    child: Row(
                      children: [
                        Image.asset(Locales?.currentLocale(context).toString() == "ar" ? "assets/images/flags/EN.png":"assets/images/flags/EG.png",height: 20,width: 20,),
                        SizedBox(width: 15,),
                        LocaleText(
                          "lang",
                          style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12),
                        ),
                      ],
                    )),
              ),
          ],
        ),
        SizedBox(height: 25,),
        Wrap(
          runSpacing: 20,
          children: [
            Container(
              height: 0.3,
              width: 160,
              color: kColor9,
            ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.exit_to_app,color: kColor9,size: 20),
            SizedBox(width: 15,),
            (_userModel == "") ?
            InkWell(
              onTap: () async {
                LocaleNotifier.of(context)?.change("en");
                Navigator.pushReplacement(
                      context,
                      OnBoardingPageRoute(
                        duration: 1000,
                          widget: MultiProvider(
      providers: [
              ChangeNotifierProvider<Visible>(
          create: (context) => Visible(),
        ),
              ChangeNotifierProvider<AuthData>(
          create: (context) => AuthData(),
        ),
              ChangeNotifierProvider<ModelHub>(
          create: (context) => ModelHub(),
        )
        ],
                            
                            child: SignIn()),
                          myAnimation: Curves.elasticInOut),
                     );
              },
              child: LocaleText('SignIn',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12),))
            :InkWell(
              onTap: () async {
                LocaleNotifier.of(context)?.change("en");
                await _auth.signOut();
              },
              child: LocaleText('Logout',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12),))
          ],
        )
          ],
        ),
    

          ],
        ));
  }
}