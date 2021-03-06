import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/screens/SubEducationUnit/sub_education_unit.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

List<TabModel> homeEducationUnit = [
    TabModel(
      imageURL: "assets/images/education/1.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit", 
           title: "Welcome Section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Welcome Section"
    ),
    TabModel(
      imageURL: "assets/images/education/2.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Friends section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Friends section"
    ),
    TabModel(
      imageURL: "assets/images/education/3.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Family section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Family section"
    ),
    TabModel(
      imageURL: "assets/images/education/4.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Hands section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Hands section"
    ),
    TabModel(
      imageURL: "assets/images/education/5.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Kids clothes section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Kids clothes section"
    ),
    TabModel(
      imageURL: "assets/images/education/6.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title:  "Kids book",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Kids book"
    ),
    TabModel(
      imageURL: "assets/images/education/7.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "National section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "National section"
    ),
    TabModel(
      imageURL: "assets/images/education/8.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Food secion",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Food secion"
    ),
    TabModel(
      imageURL: "assets/images/education/9.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "health & safety",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "health & safety"
    ),
    TabModel(
      imageURL: "assets/images/education/10.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: SubEducationUnit(
           parent: "EducationUnit",
           title: "Water section",
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Water section"
    ), 
]; 


List<TabModel> educationUnitData = [
    TabModel(
      imageURL: "assets/images/education/1.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Welcome Section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Welcome Section"
    ),
    TabModel(
      imageURL: "assets/images/education/2.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Friends section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Friends section"
    ),
    TabModel(
      imageURL: "assets/images/education/3.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Family section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Family section"
    ),
    TabModel(
      imageURL: "assets/images/education/4.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Hands section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Hands section"
    ),
    TabModel(
      imageURL: "assets/images/education/5.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Kids clothes section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Kids clothes section"
    ),
    TabModel(
      imageURL: "assets/images/education/6.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Kids book",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Kids book"
    ),
    TabModel(
      imageURL: "assets/images/education/7.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "National section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "National section"
    ),
    TabModel(
      imageURL: "assets/images/education/8.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title:"Food section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Food section"
    ),
    TabModel(
      imageURL: "assets/images/education/9.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "health & safety",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "health & safety"
    ),
    TabModel(
      imageURL: "assets/images/education/10.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Water section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Water section"
    ),
    TabModel(
      imageURL: "assets/images/education/11.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Sand section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Sand section"
    ),
    TabModel(
      imageURL: "assets/images/education/12.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "EducationUnit",
                      title: "Dwelling section",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Dwelling section"
    ), 
];  