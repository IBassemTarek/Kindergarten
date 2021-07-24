import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/screens/Home/info_cell.dart';
import 'package:kindergarten/screens/pdf/pdf_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pageRouteAnimation.dart'; 

class BigVerticalList extends StatelessWidget {  
  final List listOfPdfs;
  final bool apps;
  BigVerticalList({required this.apps,required this.listOfPdfs });
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;  
    return Container(
        alignment: Alignment.topCenter,
        width: 0.85507*_width,  
      child: ListView.separated( 
         padding: EdgeInsets.all(0), 
         scrollDirection: Axis.vertical,
         physics: NeverScrollableScrollPhysics(),
         shrinkWrap:true,
         itemCount: listOfPdfs.length,
         separatorBuilder: (context,i)=>  SizedBox(height:0.044643*_height,),
        itemBuilder:  (context,i) {
          return InkWell(
            onTap: ()async{
              apps?  
              await canLaunch(listOfPdfs[i].url) ? await launch(listOfPdfs[i].url) : throw 'Could not launch ${listOfPdfs[i].url}'
              : 
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget:
         PdfScreen(
           pdfDriveUrl: listOfPdfs[i].url,
           title: Locales.currentLocale(context).toString() == "en"?listOfPdfs[i].title:listOfPdfs[i].titleA,),
         myAnimation: Curves.elasticInOut),
          );
       
              },
            child: InfoCell(
                isBig: true,
                imageURL: driveURLTransfer(listOfPdfs[i].imageURL),
                title: Locales.currentLocale(context).toString() == "en"?listOfPdfs[i].title:listOfPdfs[i].titleA, 
            ),
          );}
      ),
    );
  }
}