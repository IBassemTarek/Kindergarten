 
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/pdf_model.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/screens/shared/big_vertical_list.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';
import 'certificate_carsouel.dart'; 


class CertificatesAndLetters extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
    final _width = MediaQuery.of(context).size.width;
     final lettersUrls = Provider.of<List<LetterModel>>(context);
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
                TopBar(title: "Certificates and letters",staticTitle: true,), 
                CertificatesCarsouel(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
                  child: Align(
                    alignment: Locales.currentLocale(context).toString() == "en"?Alignment.centerLeft:Alignment.centerRight,
                    child: LocaleText('letters',style:Theme.of(context).textTheme.headline3,)),
                  ),      
                BigVerticalList( listOfPdfs: lettersUrls,apps: false,) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

