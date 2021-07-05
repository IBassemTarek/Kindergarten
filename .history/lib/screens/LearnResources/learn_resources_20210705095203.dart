 
import 'package:flutter/material.dart'; 
import 'package:kindergarten/screens/Home/info_unit.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'courses_items.dart';
import 'programs_items.dart'; 

 

class LearningResources extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      backgroundColor: kColor9,
      body: SingleChildScrollView(
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
                  Image.asset("assets/images/resources/1.png",height:0.18415*_height),
                  InfoUnit( 
                    navigation: true,
                    listOfData: programsData,
                    sectionTitle: "Enrichment programs",
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: InfoUnit( 
                      navigation: false,
                      listOfData: coursesData,
                      sectionTitle: "Training courses",
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

