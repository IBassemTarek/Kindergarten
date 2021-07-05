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

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0.0507*_width),
      child: SizedBox(
        height: 50,
        child: Stack(
          children: [
            Padding(
                 padding: EdgeInsets.only(top: 0.02415*_width),
                 child: Builder(builder: (context) {
                  if (title == "Home")
                  {
    final drawerScalling = Provider.of<DrawerScalling>(context);
                    if ( drawerScalling.isDrawerOpen)
                    {
                 return InkWell(
                   splashColor: Colors.transparent,
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
                    return InkWell(
                   splashColor: Colors.transparent,
                        onTap: () {
                       drawerScalling.openDrawer();},
                     child: 
                     Container(
                    height: 0.1086*_width,
                    width: 0.1086*_width,
                    decoration: tabsShadow,
                    child: Icon(Icons.menu,color: kColor4,))
                     );
                    }   
                  }
                  else 
                  return InkWell(
                   splashColor: Colors.transparent,
                        onTap: () {
          Navigator.pop(
          context,
          OnBoardingPageRoute(
          duration: 600,
          widget: HomePage(),
          myAnimation: Curves.easeInOut),);

                        },
                     child: Container(
                    height: 0.1086*_width,
                    width: 0.1086*_width,
                    decoration: tabsShadow,
                    child: Icon(Icons.arrow_back,color: kColor4,)));
                     },),
               ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 22),
              ),
            ),
          ],
        ),
            
  
          
      ),
    );
  }
}
