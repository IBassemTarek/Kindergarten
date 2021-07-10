import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/pdf/pdf_screen.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

List<TabModel> programsData = [
    TabModel(
      imageURL: "assets/images/resources/programs/1.png",
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
      title: "Science Club"
    ),
    TabModel(
      imageURL: "assets/images/resources/programs/2.png",
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
      title: "Cartoons and stories"
    ), 
    TabModel(
      imageURL: "assets/images/resources/programs/3.png",
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
      title: "Storyteller"
    ), 
];  