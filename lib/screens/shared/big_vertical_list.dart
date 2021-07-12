import 'package:flutter/material.dart';
import 'package:kindergarten/screens/Home/info_cell.dart'; 

class BigVerticalList extends StatelessWidget { 
  final List listOfData;
  final List listOfPdfs;
  final bool apps;
  BigVerticalList({required this.apps,required this.listOfPdfs,required this.listOfData});
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
         itemCount: listOfData.length,
         separatorBuilder: (context,i)=>  SizedBox(height:0.044643*_height,),
        itemBuilder:  (context,i) {
          return InkWell(
            onTap: ()async{
              apps?  
              listOfData[i].function(link:listOfPdfs[i].url):
              listOfData[i].function(context:context,url:listOfPdfs[i].url,title:listOfData[i].title);
              },
            child: InfoCell(
                isBig: true,
                imageURL: listOfData[i].imageURL,
                title: listOfData[i].title, 
            ),
          );}
      ),
    );
  }
}