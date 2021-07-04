 
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/Home/welcome_section.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'events_carsouel.dart';


class MyHomePage extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kColor10,
      body: Stack(
        children: [
          DrawerScreen(),
          PageHaveDrawer(
            child: HomePage()),
        ],
      ),  
    );
  }
}

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return SingleChildScrollView(
      child: Container(
            color: kColor9, 
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:0.04464*_height,),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 0.0390625*_height,  
            children: <Widget>[
              TopBar(title: "Home",),
              WelcomeSection(),
              EventsCarsouel( ),
              Wrap(
                runSpacing: 0.0279*_height,
                children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Educational units',style:Theme.of(context).textTheme.headline3,),
                InkWell(
                  onTap: (){

                  },
                  child: Wrap(
                    direction:Axis.horizontal,
                    spacing: 0.0314*_width,
                    children: [
                      Text('View all',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7,fontSize: 14)),
                      Icon(Icons.smart_display,color: kColor4,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 0.111607*_height,
                width: 0.31159*_width,
                decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage("assets/images/home/home-1.png")
               ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
                ),
              ),
              Container(
                height: 0.0357*_height,
                width: 0.311594*_width,
                decoration: tabsShadow.copyWith(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
                )
                
                   
              ),
            ],
          )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
