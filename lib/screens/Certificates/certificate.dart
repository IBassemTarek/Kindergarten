 
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/SubEducationUnit/big_vertical_list.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';
import 'certificate_carsouel.dart';
import 'letters.dart';  


class CertificatesAndLetters extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
    final _width = MediaQuery.of(context).size.width;
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
                TopBar(title: "Certificates and letters"), 
                CertificatesCarsouel(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('letters',style:Theme.of(context).textTheme.headline3,)),
                  ),      
                BigVerticalList(listOfData: lettersData,) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

