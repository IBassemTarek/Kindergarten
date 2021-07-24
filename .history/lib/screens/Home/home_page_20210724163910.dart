 
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart'; 
import 'package:kindergarten/models/pdf_model.dart'; 
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart'; 
import 'package:kindergarten/screens/Home/welcome_section.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/screens/shared/info_unit.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';
import 'education_unit.dart';
import 'events_carsouel.dart'; 
import 'other_services.dart';  


class MyHomePage extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kColor10,
      body: Stack(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: DrawerScreen()),
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
    final teachingAids = Provider.of<List<TechingAids>>(context);
    final soonProvided = Provider.of<List<SoonProvided>>(context);
    
    final _height = MediaQuery.of(context).size.height; 
    return SingleChildScrollView(
      child: Container(
            color: kColor9, 
        child: Padding(
          padding: EdgeInsets.only(top:0.04464*_height,),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 0.0390625*_height,  
            children: <Widget>[
              Directionality(
                textDirection: TextDirection.ltr,
                child: TopBar(title: "Home",staticTitle: true)), 
              WelcomeSection(),
              EventsCarsouel( ),
          //               Align(
          // alignment: Alignment.bottomLeft,
          // child: Image.asset("assets/images/home/education-vector.png",height:0.20089*_height)),
              EducationUnits( ),
              
          // Align(
          // alignment: Locales.currentLocale(context).toString() == "en" ?Alignment.bottomRight:Alignment.bottomLeft,
          // child: Image.asset(Locales.currentLocale(context).toString() == "en" ?"assets/images/home/services-vector.png":"assets/images/home/services-vectorA.png",height: 0.21205*_height,)),
              
              OtherServices(),
              
              
              teachingAids.isEmpty?Center(child: CircularProgressIndicator()):  
              Align(
                alignment: Locales.currentLocale(context).toString() == "en"?Alignment.topLeft:Alignment.topRight,
                child: InfoUnit(
                  listOfPdfs: teachingAids, 
                  navigation: false,
                  listOfData: [],
                  sectionTitle: "Teaching Aids",
                ),
              ),
             
             
          // Align(
          //   alignment:Alignment.bottomLeft,
          //     child: Image.asset("assets/images/home/home-3.png",height:0.24776*_height,)),
             
              Container(  
                child: Align(
                  alignment:  Locales.currentLocale(context).toString() == "en"?Alignment.topLeft:Alignment.topRight,
                  child: InfoUnit( 
                    listOfPdfs: soonProvided,
                    navigation: false,
                    listOfData: [],
                    sectionTitle: "Services provide soon",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

