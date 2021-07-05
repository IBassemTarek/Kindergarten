 
import 'package:flutter/material.dart'; 
import 'package:kindergarten/screens/Home/info_unit.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'courses_items.dart';
import 'programs_items.dart'; 

 

class LearningResources extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {  
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      backgroundColor: kColor9,
      body: Stack(
        children: [
              Positioned(
                right: -20,
                bottom: -20, 
              child: Image.asset("assets/images/resources/Vector2.png",height:0.20089*_height)),
            Positioned(
            top: -20,
            right: -20,
            child: Image.asset("assets/images/resources/Vector1.png",height:0.20089*_height)),
          Padding(
            padding: EdgeInsets.only(top:0.04464*_height,),
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 0.0390625*_height,  
              children: <Widget>[
                TopBar(title: "learning resources",), 
                Container(
                  height: 0.18415*_height,
                  width: 0.937198*_width,
                  child: Image.asset("assets/images/resources/land.png",height:0.18415*_height)),
                InfoUnit( 
                  navigation: true,
                  listOfData: programsData,
                  sectionTitle: "Enrichment programs",
                ),
                InfoUnit( 
                  navigation: false,
                  listOfData: coursesData,
                  sectionTitle: "Training courses",
                ), 
                Spacer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

