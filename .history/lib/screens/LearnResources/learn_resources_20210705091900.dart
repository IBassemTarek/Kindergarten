 
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/Home/soon_units.dart';
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
    final _height = MediaQuery.of(context).size.height; 
    return SingleChildScrollView(
      child: Container(
            color: kColor9, 
        child: Stack(
          children: [
              Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/resources/Vector1.png",height:0.20089*_height)),
              Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/images/resources/Vector2.png",height:0.20089*_height)),
            Padding(
              padding: EdgeInsets.only(top:0.04464*_height,),
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 0.0390625*_height,  
                children: <Widget>[
                  TopBar(title: "learning resources",), 
                  Stack(
                    children: [

                      EducationUnits( ),
                    ],
                  ),
                  Stack(
                    children: [
              Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/images/home/services-vector.png",height: 0.21205*_height,)),
                      InfoUnit( 
                        navigation: true,
                        listOfData: servicesUnitData,
                        sectionTitle: "Other services",
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: InfoUnit( 
                      navigation: false,
                      listOfData: aidsUnitData,
                      sectionTitle: "Teaching Aids",
                    ),
                  ),
                  Stack(
                    children: [
              Align(
                alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/images/home/home-3.png",height:0.24776*_height,)),
                      Container( 
                  height: 0.20803*_height,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InfoUnit( 
                            navigation: true,
                            listOfData: soonUnitData,
                            sectionTitle: "Services provide soon",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

