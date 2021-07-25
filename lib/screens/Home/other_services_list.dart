import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/screens/Certificates/certificate.dart';
import 'package:kindergarten/screens/LastMeeting/last_meeting.dart';
import 'package:kindergarten/screens/LearnResources/learn_resources.dart';
import 'package:kindergarten/screens/PlayOutSide/play_outSide.dart';
import 'package:kindergarten/screens/Preparation/preparation.dart';
import 'package:kindergarten/screens/SubEducationUnit/sub_education_unit.dart';
import 'package:kindergarten/screens/UsefulApps/useful_apps.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:kindergarten/screens/worksheets/worksheets.dart';

List<TabModel> servicesUnitData = [ 
    TabModel(
      imageURL: "assets/images/services/1.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: Preparation( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "Preparation"
    ),
    TabModel(
      imageURL: "assets/images/services/2.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: Worksheets( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "Worksheets"
    ),
    TabModel(
      imageURL: "assets/images/services/3.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: PlayOutSide( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "Playing outside"
    ),
    TabModel(
      imageURL: "assets/images/services/4.png",
            function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: LearningResources( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "learning resources"
    ),
    TabModel(
      imageURL: "assets/images/services/5.png",
            function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: LastMeeting( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "last meeting"
    ),
    TabModel(
      imageURL: "assets/images/services/6.png",
            function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: CertificatesAndLetters( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      }, 
      title: "Testimonials & letters"
    ), 
  
    TabModel(
      imageURL: "assets/images/services/7.png",
      function: ({required BuildContext context}){
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: SubEducationUnit(
                      title: "Quran and biography",
                    ),
                    myAnimation: Curves.elasticInOut),
             );
      }, 
      title: "Quran and biography"
    ),

    TabModel(
      imageURL: "assets/images/services/8.png",
      function: ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: UsefulApps( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: 'Useful apps'
    ), 
]; 
 