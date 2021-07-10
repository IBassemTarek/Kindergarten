 
import 'package:flutter/material.dart';
import 'package:kindergarten/models/pdf_model.dart';
import 'package:kindergarten/screens/shared/info_unit.dart';  
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';
import 'courses_items.dart';
import 'programs_items.dart'; 

 

class LearningResources extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {  
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    final enrichmentPrograms = Provider.of<List<EnrichmentPrograms>>(context);
     final trainingCourses = Provider.of<List<TrainingCourses>>(context);
    return Scaffold(
      backgroundColor: kColor9,
      body: Stack(
        children: [
              Align(
                alignment: Alignment.bottomRight, 
              child: Image.asset("assets/images/resources/Vector2.png",height:0.1406*_height)),
            Align(
              alignment: Alignment.topRight, 
            child: Image.asset("assets/images/resources/Vector1.png",height:0.142053*_height)),
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
                enrichmentPrograms.isEmpty?Center(child: CircularProgressIndicator()):
                InfoUnit(
                  listOfPdfs: enrichmentPrograms, 
                  navigation: false,
                  listOfData: programsData,
                  sectionTitle: "Enrichment programs",
                ),
                trainingCourses.isEmpty?Center(child: CircularProgressIndicator()):
                InfoUnit( 
                  listOfPdfs: trainingCourses, 
                  navigation: false,
                  listOfData: coursesData,
                  sectionTitle: "Training courses",
                ),   
              ],
            ),
          ),
        ],
      ),
    );
  }
}

