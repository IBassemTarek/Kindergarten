
import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/screens/SubEducationUnit/sub_education_unit.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';

List<TabModel> lastMeetingData = [
    TabModel(
      imageURL: "assets/images/lastMeeting/1.jpg",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
                      parent: "LastMeeting",
                      title: "Games",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Games"
    ),
    TabModel(
      imageURL: "assets/images/lastMeeting/2.jpg",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "LastMeeting",
                      title: "Finger games",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Finger games"
    ),
    TabModel(
      imageURL: "assets/images/lastMeeting/3.jpg",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "LastMeeting",
                      title: "Chants",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Chants"
    ),
    TabModel(
      imageURL: "assets/images/lastMeeting/4.png",
      function: ({required BuildContext context}) async {
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
           parent: "LastMeeting",
                      title: "Stories",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      },
      title: "Stories"
    ),
 
];  