 
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

    final quranURLs = Provider.of<List<QuranModel>>(context);

    final _height = MediaQuery.of(context).size.height; 
    final gamesLastURLs = Provider.of<List<WelcomeSectionLastModel>>(context);
    final fingerGamesLastURLs = Provider.of<List<FriendsSectionLastModel>>(context);
    final chantsLastURLs = Provider.of<List<FamilySectionLastModel>>(context);
    final storiesLastURLs = Provider.of<List<HandsSectionLastModel>>(context);

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
    final audibleFeaturesURLs = Provider.of<List<AudibleFeaturesModel>>(context);

    final preparingclassesURLs = Provider.of<List<PreparingClassesModel>>(context);
    final variousmeansURLs = Provider.of<List<VariousMeansModel>>(context);
    final eventsSctionURLs = Provider.of<List<EventsSection>>(context);

    if (title == "Welcome Section" && parent == "preparation")
    sectionUrls = welcomePreparingURLs;
    else if (title == "Preparing classes" && parent == "TeachingAids")
    sectionUrls = preparingclassesURLs;
    else if (title == "Various means" && parent == "TeachingAids")
    sectionUrls = variousmeansURLs;
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


    if (title == "Games" && parent == "LastMeeting")
    sectionUrls = gamesLastURLs;
    else if (title == "Finger games" && parent == "LastMeeting")
    sectionUrls = fingerGamesLastURLs;
    else if (title == "Chants" && parent == "LastMeeting")
    sectionUrls = chantsLastURLs;
    else if (title == "Stories" && parent == "LastMeeting")
    sectionUrls = storiesLastURLs;



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


    else if (title == "File processing")
    sectionUrls = audibleFeaturesURLs;     
    else if (title == "Quran and biography")
    sectionUrls = quranURLs;
    else if (title == "Events")
    sectionUrls = eventsSctionURLs;

  
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

