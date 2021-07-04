import 'package:flutter/material.dart';

import '../../settings.dart';
import 'educatioon_units.dart';
import 'package:url_launcher/url_launcher.dart';
class EducationUnits extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Wrap(
      runSpacing: 0.0279*_height,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
            child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Educational units',style:Theme.of(context).textTheme.headline3,),
      InkWell(
        onTap: (){

        },
        child: Wrap(
          direction:Axis.horizontal,
          spacing: 0.0314*_width,
          children: [
            Text('View all',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7,fontSize: 14)),
            Icon(Icons.smart_display,color: kColor4,)
          ],
        ),
      )
    ],
            ),
          ),
          HorizontalList(listOfData:educationUnitData,)
      ],
    );
  }
}




