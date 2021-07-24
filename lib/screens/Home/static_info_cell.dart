import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart'; 

import '../../settings.dart';

class StaticInfoCell extends StatelessWidget {  
  final String imageURL;
  final String title; 
  final bool isBig;
  StaticInfoCell({required this.isBig,required this.imageURL,required this.title});
  @override
  Widget build(BuildContext context) { 
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
    children: [
      Container(
        height: isBig?0.20647*_height:0.111607*_height,  
        width: isBig?0.855*_width:0.31159*_width, //
        decoration: BoxDecoration(
       image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage(imageURL)
       ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
        ),
      ),
      Container(
        height: isBig?0.0435*_height:0.0357*_height, //
        width: isBig?0.855*_width:0.311594*_width, //
        decoration: tabsShadow.copyWith(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
        ),
        child: Center(child: LocaleText(title,style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 11))),
           
      ),
    ],
    );
  }
}