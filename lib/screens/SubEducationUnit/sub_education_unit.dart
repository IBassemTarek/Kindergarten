 
import 'package:flutter/material.dart';
import 'package:kindergarten/models/last_pdf_models.dart';
import 'package:kindergarten/models/pdf_model.dart';
import 'package:kindergarten/models/preparing_pdf_models.dart'; 
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/screens/shared/big_vertical_list.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';  


// ignore: must_be_immutable
class SubEducationUnit extends StatelessWidget {
  final String title;
  final String parent;
  late List sectionUrls;
  SubEducationUnit({required this.title,required this.parent});
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
    final dwellingURLs = Provider.of<List<DwellingSection>>(context);
    final sandURLs = Provider.of<List<SandSection>>(context);


      
    
    final audibleFeaturesURLs = Provider.of<List<AudibleFeaturesModel>>(context);
    final missionURLs = Provider.of<List<MissionModel>>(context);
    final visionURLs = Provider.of<List<VisionModel>>(context);
    final quranURLs = Provider.of<List<QuranModel>>(context);

    final _height = MediaQuery.of(context).size.height; 
    final welcomeLastURLs = Provider.of<List<WelcomeSectionLastModel>>(context);
    final friendsLastURLs = Provider.of<List<FriendsSectionLastModel>>(context);
    final familyLastURLs = Provider.of<List<FamilySectionLastModel>>(context);
    final handsLastURLs = Provider.of<List<HandsSectionLastModel>>(context);
    final kidsClothesLastURLs = Provider.of<List<KidsClothesSectionLastModel>>(context);
    final kidsBooksLastURLs = Provider.of<List<KidsBooksSectionLastModel>>(context);
    final nationalLastURLs = Provider.of<List<NationalSectionLastModel>>(context);
    final foodLastURLs = Provider.of<List<FoodSectionLastModel>>(context);
    final healthLastURLs = Provider.of<List<HealthSectionLastModel>>(context);
    final waterLastURLs = Provider.of<List<WaterSectionLastModel>>(context);
    final dwellingLastURLs = Provider.of<List<DwellingSectionLast>>(context);
    final sandLastURLs = Provider.of<List<SandSectionLast>>(context);


    final welcomePreparingURLs = Provider.of<List<WelcomeSectionPreparingModel>>(context);
    final friendsPreparingURLs = Provider.of<List<FriendsSectionPreparingModel>>(context);
    final familyPreparingURLs = Provider.of<List<FamilySectionPreparingModel>>(context);
    final handsPreparingURLs = Provider.of<List<HandsSectionPreparingModel>>(context);
    final kidsClothesPreparingURLs = Provider.of<List<KidsClothesSectionPreparingModel>>(context);
    final kidsBooksPreparingURLs = Provider.of<List<KidsBooksSectionPreparingModel>>(context);
    final nationalPreparingURLs = Provider.of<List<NationalSectionPreparingModel>>(context);
    final foodPreparingURLs = Provider.of<List<FoodSectionPreparingModel>>(context);
    final healthPreparingURLs = Provider.of<List<HealthSectionPreparingModel>>(context);
    final waterPreparingURLs = Provider.of<List<WaterSectionPreparingModel>>(context);
    final dwellingPreparingURLs = Provider.of<List<DwellingSectionPreparing>>(context);
    final sandPreparingURLs = Provider.of<List<SandSectionPreparing>>(context);


    if (title == "Welcome Section" && parent == "preparation")
    sectionUrls = welcomePreparingURLs;
    else if (title == "Friends section" && parent == "preparation")
    sectionUrls = friendsPreparingURLs;
    else if (title == "Family section" && parent == "preparation")
    sectionUrls = familyPreparingURLs;
    else if (title == "Hands section" && parent == "preparation")
    sectionUrls = handsPreparingURLs;
    else if (title == "Kids clothes section" && parent == "preparation")
    sectionUrls = kidsClothesPreparingURLs;
    else if (title == "Kids book" && parent == "preparation")
    sectionUrls = kidsBooksPreparingURLs;
    else if (title == "National section" && parent == "preparation")
    sectionUrls = nationalPreparingURLs;
    else if (title == "Food section" && parent == "preparation")
    sectionUrls = foodPreparingURLs;
    else if (title == "health & safety" && parent == "preparation")
    sectionUrls = healthPreparingURLs;   
    else if (title == "Water section" && parent == "preparation")
    sectionUrls = waterPreparingURLs; 
    else if (title == "Dwelling section" && parent == "preparation")
    sectionUrls = dwellingPreparingURLs;   
    else if (title ==  "Sand section" && parent == "preparation")
    sectionUrls = sandPreparingURLs; 

    if (title == "Welcome Section" && parent == "LastMeeting")
    sectionUrls = welcomeLastURLs;
    else if (title == "Friends section" && parent == "LastMeeting")
    sectionUrls = friendsLastURLs;
    else if (title == "Family section" && parent == "LastMeeting")
    sectionUrls = familyLastURLs;
    else if (title == "Hands section" && parent == "LastMeeting")
    sectionUrls = handsLastURLs;
    else if (title == "Kids clothes section" && parent == "LastMeeting")
    sectionUrls = kidsClothesLastURLs;
    else if (title == "Kids book" && parent == "LastMeeting")
    sectionUrls = kidsBooksLastURLs;
    else if (title == "National section" && parent == "LastMeeting")
    sectionUrls = nationalLastURLs;
    else if (title == "Food section" && parent == "LastMeeting")
    sectionUrls = foodLastURLs;
    else if (title == "health & safety" && parent == "LastMeeting")
    sectionUrls = healthLastURLs;   
    else if (title == "Water section" && parent == "LastMeeting")
    sectionUrls = waterLastURLs; 
    else if (title == "Dwelling section" && parent == "LastMeeting")
    sectionUrls = dwellingLastURLs;   
    else if (title ==  "Sand section" && parent == "LastMeeting")
    sectionUrls = sandLastURLs; 


    if (title == "Welcome Section" && parent == "EducationUnit")
    sectionUrls = welcomeURLs;
    else if (title == "Friends section" && parent == "EducationUnit")
    sectionUrls = friendsURLs;
    else if (title == "Family section" && parent == "EducationUnit")
    sectionUrls = familyURLs;
    else if (title == "Hands section" && parent == "EducationUnit")
    sectionUrls = handsURLs;
    else if (title == "Kids clothes section" && parent == "EducationUnit")
    sectionUrls = kidsClothesURLs;
    else if (title == "Kids book" && parent == "EducationUnit")
    sectionUrls = kidsBooksURLs;
    else if (title == "National section" && parent == "EducationUnit")
    sectionUrls = nationalURLs;
    else if (title == "Food section" && parent == "EducationUnit")
    sectionUrls = foodURLs;
    else if (title == "health & safety" && parent == "EducationUnit")
    sectionUrls = healthURLs;   
    else if (title == "Water section" && parent == "EducationUnit")
    sectionUrls = waterURLs; 
    else if (title == "Dwelling section" && parent == "EducationUnit")
    sectionUrls = dwellingURLs;   
    else if (title ==  "Sand section" && parent == "EducationUnit")
    sectionUrls = sandURLs;   


    else if (title == "Audible features")
    sectionUrls = audibleFeaturesURLs;    
    else if (title == "Mission")
    sectionUrls = missionURLs;  
    else if (title == "Vision")
    sectionUrls = visionURLs;    
    else if (title == "Quran and biography")
    sectionUrls = quranURLs;

  
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

