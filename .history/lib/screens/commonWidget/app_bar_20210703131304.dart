import 'package:flutter/material.dart';
import 'package:kindergarten/models/drawer_scalling.dart';
import 'package:kindergarten/screens/Home/home_page.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:provider/provider.dart';  

import '../../settings.dart'; 

class TopBar extends StatelessWidget {
  final String title; 
  TopBar({required this.title });
  @override
  Widget build(BuildContext context) {
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return SizedBox(
      height: 50,
      child: Wrap(
        spacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [
         Builder(builder: (context) {
          if (title == "Home")
          {
            if ( drawerScalling.isDrawerOpen)
            {
         return OutlinedButton(
          onPressed: (){
             drawerScalling.closeDrawer();
          },
          child: Icon(Icons.arrow_back));
            }
            else 
            {
            return OutlinedButton(
                onPressed: () {
               drawerScalling.openDrawer();},
             child: Icon(Icons.menu));
            }   
          }
          else 
          return OutlinedButton(
                onPressed: () {
                 Navigator.pushReplacement(
                                        context,
                                        OnBoardingPageRoute(
                                            duration: 1000,
                                            widget: MyHomePage(),
                                            myAnimation: Curves.elasticInOut),
                                      );

                },
             child: Icon(Icons.arrow_back_ios_new_rounded,color: kColor7,));
             },),
          
          Text(
            title,
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 16),
          ), 
          Container()
        ],
      ),
    );
  }
}
