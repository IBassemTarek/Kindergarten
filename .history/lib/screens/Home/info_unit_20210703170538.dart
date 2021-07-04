import 'package:flutter/material.dart';
import 'horizontal_list.dart'; 
class InfoUnit extends StatelessWidget {  
  final List listOfData;
  final String sectionTitle;
  InfoUnit({required this.listOfData,required this.sectionTitle});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Wrap(
      runSpacing: 0.0279*_height,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ), 
            child: Text(sectionTitle,style:Theme.of(context).textTheme.headline3,), 
    
          ),
          HorizontalList(listOfData:listOfData,)
      ],
    );
  }
}




