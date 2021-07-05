import 'package:flutter/material.dart';
import 'package:kindergarten/screens/Home/info_cell.dart'; 

class GridList extends StatelessWidget { 
  final List listOfData;
  final bool navigation;
  GridList({required this.listOfData,required this.navigation});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width; 
    return GridView.builder(
    primary: false, 
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
       padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
       scrollDirection: Axis.vertical,
       shrinkWrap:true,
       itemCount: listOfData.length,
      itemBuilder:  (context,i) {
        return InkWell(
            onTap: ()async{
              navigation? 
              listOfData[i].function(context:context)
              :listOfData[i].function(link:"http://www.africau.edu/images/default/sample.pdf");
              },
          child: InfoCell(
              isBig: false,
              imageURL: listOfData[i].imageURL,
              title: listOfData[i].title, 
          ),
        );
        }
    );
  }
}