import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/screens/EducationUnit/education_item_UI.dart';
import 'package:kindergarten/screens/Home/static_horizontal_list.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart'; 

import '../../settings.dart';
import 'educatioon_units.dart'; 
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
      LocaleText("Educational Units",style:Locales?.currentLocale(context).toString() == "ar" ? Theme.of(context).textTheme.headline2?.copyWith(color: kColor7,fontSize: 14) : Theme.of(context).textTheme.headline3,),
      InkWell(
        onTap: (){
             Navigator.push(
                 context,
                  OnBoardingPageRoute(
                    duration: 1000,
                    widget: EducationUnit(),
                    myAnimation: Curves.elasticInOut),
             ); 
        },
        child: Wrap(
          direction:Axis.horizontal,
          spacing: 0.0314*_width,
          children: [
            LocaleText('View all',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7,fontSize: 14)),
            Icon(Icons.smart_display,color: kColor4,)
          ],
        ),
      )
    ],
            ),
          ),
          StaticHorizontalList(listOfData:educationUnitData,navigation: true,listOfPdfs: [],)
      ],
    );
  }
}




