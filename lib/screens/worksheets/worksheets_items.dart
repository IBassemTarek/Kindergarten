import 'package:flutter/material.dart';
import 'package:kindergarten/models/tab_model.dart';
import 'package:kindergarten/pdf/pdf_screen.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

List<TabModel> worksheetsData = [
    TabModel(
      imageURL: "assets/images/worksheets/1.png",
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
      title: "English alphabet"
    ),
    TabModel(
      imageURL: "assets/images/worksheets/2.png",
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
      title: "Arabic alphabet"
    ),
    TabModel(
      imageURL: "assets/images/worksheets/3.png",
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
      title: "English Numbers"
    ), 
 
];  