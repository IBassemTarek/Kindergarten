
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';


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
      child: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: Container(
          color: kColor9, 
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 0.0390625*_height,  
            children: <Widget>[
              TopBar(title: "Home",),
              WelcomeSection(),
              Text(
                'Welcome to Home page',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Container(
      height: 0.128348*_height,
      width: 0.90338*_width,
      decoration: tabsShadow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Container(
             height: 0.09152*_height,
             width: 0.2947*_width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               image: DecorationImage(
                 image: AssetImage("assets/images/home/home-1.png")
               )
             ),
           ),
           Container(
             height: 0.087844*_height,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Welcome Name',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor6 ),),
                 Text('Start learn with us',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7 ),)
               ],
             ),
           )
        ],
      ),
    );
  }
} 
 