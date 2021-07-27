import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart'; 
import 'package:kindergarten/screens/Home/horizontal_list.dart';
import 'package:kindergarten/screens/Home/soon_horizontal_list.dart';


class InfoUnit extends StatelessWidget {  
  final List listOfData;
  final String sectionTitle;
  final bool navigation;
  final List listOfPdfs;
  InfoUnit({required this.listOfData,required this.sectionTitle,required this.navigation ,required this.listOfPdfs});
  @override
  Widget build(BuildContext context) { 

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;  
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ), 
            child: LocaleText(sectionTitle,style:Theme.of(context).textTheme.headline3,), 
    
          ),
          SizedBox(height:.0279*_height),
          Builder(builder: (context){
            if (sectionTitle == "Services provide soon")
            {
              return SoonHorizontalList(listOfPdfs: listOfPdfs,);
            }
            else {
              return HorizontalList(listOfData:listOfData,navigation: navigation,listOfPdfs: listOfPdfs,);
            }
          }),
          
      ],
    );
  }
}




