import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/screens/SubEducationUnit/sub_education_unit.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

List<TabModel> teachingAidsUnit = [
 
    TabModel(
      imageURL: "assets/images/teachingaids/1.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "TeachingAids",
                      title: "Preparing classes",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Preparing classes"
    ),
    TabModel(
      imageURL: "assets/images/teachingaids/2.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "TeachingAids",
                      title: "Various means",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Various means"
    ), 
];  