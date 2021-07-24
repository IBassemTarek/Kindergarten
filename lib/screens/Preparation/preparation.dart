 
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/EducationUnit/grid_items.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'sub_education_items.dart'; 


class Preparation extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
              color: kColor9, 
          child: Padding(
            padding: EdgeInsets.only(top:0.04464*_height,),
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 0.0390625*_height,  
              children: <Widget>[
                TopBar(title: "Preparation",staticTitle: true), 
                GridList(listOfData: preparationData,navigation: true,), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

