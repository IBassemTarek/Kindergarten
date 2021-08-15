import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart'; 
import 'package:kindergarten/screens/Home/static_horizontal_list.dart';
import 'package:kindergarten/screens/teachingAids/teaching_aids_list.dart'; 
import '../../settings.dart'; 
class TeachingAids extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Wrap(
      runSpacing: 0.0279*_height,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
            child: LocaleText('Teaching Aids',style:Locales?.currentLocale(context).toString() == "ar" ? Theme.of(context).textTheme.headline2?.copyWith(color: kColor6) :  Theme.of(context).textTheme.headline3),
          ),
          StaticHorizontalList(listOfData:teachingAidsUnit,navigation: true,listOfPdfs: [],)
      ],
    );
  }
}




