import 'package:flutter/material.dart';
import 'package:kindergarten/screens/Home/info_cell.dart'; 

class HorizontalList extends StatelessWidget { 
  final List listOfData;
  HorizontalList({required this.listOfData});
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
         itemCount: listOfData.length,
         separatorBuilder: (context,i)=>  SizedBox(width:0.07729*_width,),
        itemBuilder:  (context,i) {
          return InfoCell(
              imageURL: listOfData[i].imageURL,
              title: listOfData[i].title,
              link: listOfData[i].link,
          );}
      ),
    );
  }
}