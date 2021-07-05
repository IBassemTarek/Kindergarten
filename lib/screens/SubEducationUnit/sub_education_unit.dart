 
import 'package:flutter/material.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'big_vertical_list.dart';
import 'sub_education_items.dart';  


class SubEducationUnit extends StatelessWidget {
  final String title;
  SubEducationUnit({required this.title});
  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      body: Container(
            color: kColor9, 
        child: Padding(
          padding: EdgeInsets.only(top:0.04464*_height,),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 0.0390625*_height,  
              children: <Widget>[
                TopBar(title: title,), 
                BigVerticalList(listOfData: subEducationUnitData,) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

