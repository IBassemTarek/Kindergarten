 
import 'package:flutter/material.dart';
import 'package:kindergarten/models/pdf_model.dart';  
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/screens/shared/big_vertical_list.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';
import 'apps_list.dart'; 


class UsefulApps extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {  
    final _height = MediaQuery.of(context).size.height; 
     final usefulAppsLinks = Provider.of<List<UsefulAppsModel>>(context);
    
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
                TopBar(title: "Useful apps",), 
                BigVerticalList(listOfData: usefulApps,listOfPdfs: usefulAppsLinks,apps: true,) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

