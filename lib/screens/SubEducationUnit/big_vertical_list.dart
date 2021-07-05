import 'package:flutter/material.dart';
import 'package:kindergarten/screens/Home/info_cell.dart'; 

class BigVerticalList extends StatelessWidget { 
  final List listOfData;
  BigVerticalList({required this.listOfData});
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
              listOfData[i].function(link:"http://www.africau.edu/images/default/sample.pdf");
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