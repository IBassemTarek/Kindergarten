 
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/Home/welcome_section.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'education_unit.dart';
import 'events_carsouel.dart';
import 'info_unit.dart';
import 'other_services_list.dart';


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
              Stack(
                children: [
          Align(
          alignment: Alignment.centerLeft,
          child: Image.asset("assets/images/home/education-vector.png",height:0.20089*_height)),
                  EducationUnits( ),
                ],
              ),
              Stack(
                children: [
          Align(
          alignment: Alignment.bottomRight,
          child: Image.asset("assets/images/home/services-vector.png",height: 0.21205*_height,)),
                  InfoUnit( 
                    listOfData: servicesUnitData,
                    sectionTitle: "Other services",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

