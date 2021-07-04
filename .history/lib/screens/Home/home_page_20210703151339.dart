
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/Home/welcome_section.dart';
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
      child: Container(
            color: kColor9, 
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:0.04464*_height,horizontal:0.0507*_width ),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 0.0390625*_height,  
            children: <Widget>[
              TopBar(title: "Home",),
              WelcomeSection(),
              Wrap(
                runSpacing: 0.0279*_height,
                children: [
                  
                Text('Events',style:Theme.of(context).textTheme.headline3,),
                
                  CarouselSlider.builder(
          itemCount: 3,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
             height: 0.22098*_height,
             width: 0.71739*_width,
             decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(15),
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage("assets/images/home/event$itemIndex.jpg")
                   )
             ),
    ),
          options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
