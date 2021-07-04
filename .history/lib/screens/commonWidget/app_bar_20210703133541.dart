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
    final _width = MediaQuery.of(context).size.width;
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return SizedBox(
      height: 50,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 0.201845*_width,
        children: [
         Padding(
           padding: EdgeInsets.only(left: 0.02415*_width),
           child: Builder(builder: (context) {
            if (title == "Home")
            {
              if ( drawerScalling.isDrawerOpen)
              {
           return InkWell(
            onTap: (){
               drawerScalling.closeDrawer();
            },
            child: Container(
              height: 0.1086*_width,
              width: 0.1086*_width,
              decoration: tabsShadow,
              child: Icon(Icons.arrow_back,color: kColor4,)));
              }
              else 
              {
              return OutlinedButton(
                  onPressed: () {
                 drawerScalling.openDrawer();},
               child: Icon(Icons.menu,color: kColor4,));
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
         ),
          
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ), 
          Container()
        ],
      ),
    );
  }
}
