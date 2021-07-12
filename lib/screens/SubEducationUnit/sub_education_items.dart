import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/pdf/pdf_screen.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

List<TabModel> subEducationUnitData = [
    TabModel(
      imageURL: "assets/images/sub-education/1.png",
      function: ({required BuildContext context, required String title, required String url}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget:
         PdfScreen(
           pdfDriveUrl: url,
           title: title,),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Family coexistence corner"
    ),
    TabModel(
      imageURL: "assets/images/sub-education/2.png",
      function: ({required BuildContext context, required String title, required String url}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget:
         PdfScreen(
           pdfDriveUrl: url,
           title: title,),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Art corner"
    ),
    TabModel(
      imageURL: "assets/images/sub-education/3.png",
      function: ({required BuildContext context, required String title, required String url}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget:
         PdfScreen(
           pdfDriveUrl: url,
           title: title,),
         myAnimation: Curves.elasticInOut),
          );
      },
      title: "Library corner"
    ), 
 
];  