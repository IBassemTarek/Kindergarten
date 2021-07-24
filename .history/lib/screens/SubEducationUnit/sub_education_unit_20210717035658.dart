 
import 'package:flutter/material.dart';
import 'package:kindergarten/models/pdf_model.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/screens/shared/big_vertical_list.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';  


// ignore: must_be_immutable
class SubEducationUnit extends StatelessWidget {
  final String title;
  late List sectionUrls;
  SubEducationUnit({required this.title});
  @override
  Widget build(BuildContext context) {  
    final welcomeURLs = Provider.of<List<WelcomeSectionModel>>(context);
    final friendsURLs = Provider.of<List<FriendsSectionModel>>(context);
    final familyURLs = Provider.of<List<FamilySectionModel>>(context);
    final handsURLs = Provider.of<List<HandsSectionModel>>(context);
    final kidsClothesURLs = Provider.of<List<KidsClothesSectionModel>>(context);
    final kidsBooksURLs = Provider.of<List<KidsBooksSectionModel>>(context);
    final nationalURLs = Provider.of<List<NationalSectionModel>>(context);
    final foodURLs = Provider.of<List<FoodSectionModel>>(context);
    final healthURLs = Provider.of<List<HealthSectionModel>>(context);
    final waterURLs = Provider.of<List<WaterSectionModel>>(context);
    final audibleFeaturesURLs = Provider.of<List<AudibleFeaturesModel>>(context);
    final missionURLs = Provider.of<List<MissionModel>>(context);
    final visionURLs = Provider.of<List<VisionModel>>(context);
  
    final _height = MediaQuery.of(context).size.height; 
    if (title == "Welcome Section")
    sectionUrls = welcomeURLs;
    else if (title == "Friends section")
    sectionUrls = friendsURLs;
    else if (title == "Family section")
    sectionUrls = familyURLs;
    else if (title == "Hands section")
    sectionUrls = handsURLs;
    else if (title == "Kids clothes section")
    sectionUrls = kidsClothesURLs;
    else if (title == "Kids book")
    sectionUrls = kidsBooksURLs;
    else if (title == "National section")
    sectionUrls = nationalURLs;
    else if (title == "Food section")
    sectionUrls = foodURLs;
    else if (title == "health & safety")
    sectionUrls = healthURLs;   
    else if (title == "Water section")
    sectionUrls = waterURLs; 
    else if (title == "Audible features")
    sectionUrls = audibleFeaturesURLs;    
    else if (title == "Mission")
    sectionUrls = missionURLs;  

    else if (title == "Vision")
    sectionUrls = visionURLs;    
    
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
                TopBar(title: title,staticTitle: true), 
                sectionUrls.isEmpty?Center(child: CircularProgressIndicator()):
                BigVerticalList( listOfPdfs: sectionUrls,apps: false,) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

