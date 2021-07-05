import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/screens/Home/educatioon_units.dart';
import 'package:kindergarten/screens/SubEducationUnit/sub_education_unit.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';  

List<TabModel> preparationData =  [   
    TabModel(
      imageURL: "assets/images/perparation/1.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
                      title: "Vision",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Vision"
    ),
    TabModel(
      imageURL: "assets/images/perparation/2.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
                      title:"Mission",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Mission"
    ),
    TabModel(
      imageURL: "assets/images/perparation/3.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
                      title: "Audible features",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Audible features"
    ), 
 
] + educationUnitData ; 

