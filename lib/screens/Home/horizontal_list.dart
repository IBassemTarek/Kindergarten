import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart'; 
import 'package:kindergarten/screens/Home/info_cell.dart';
import 'package:kindergarten/screens/pdf/pdf_screen.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';  
class HorizontalList extends StatelessWidget { 
  final List listOfData;
  final List listOfPdfs;
  final bool navigation;
  HorizontalList({required this.listOfData,required this.navigation,required this.listOfPdfs});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Container(
        height: 0.159*_height,
      child: ListView.separated(
         padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
         scrollDirection: Axis.horizontal,
         shrinkWrap:true,
         itemCount: listOfPdfs.length,
         separatorBuilder: (context,i)=>  SizedBox(width:0.07729*_width,),
        itemBuilder:  (context,i) {
          return InkWell(
            onTap: ()async{
              navigation? 
              listOfData[i].function(context:context)
              :
        Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget:
         PdfScreen(
           source: listOfPdfs[i].source,
           pdfDriveUrl: listOfPdfs[i].url,
           title: Locales.currentLocale(context).toString() == "en"?listOfPdfs[i].title:listOfPdfs[i].titleA,),
         myAnimation: Curves.elasticInOut),
          ); 
              },
            child: InfoCell(
              isBig: false,
                imageURL: driveURLTransfer(listOfPdfs[i].imageURL),
                title: Locales.currentLocale(context).toString() == "en"?listOfPdfs[i].title:listOfPdfs[i].titleA,
            ),
          );}
      ),
    );
  }
}