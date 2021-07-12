import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:kindergarten/models/pdf_model.dart';
import 'package:kindergarten/services/enrichment_programs.dart';
import 'package:kindergarten/services/family_section.dart';
import 'package:kindergarten/services/friends_section.dart';
import 'package:kindergarten/services/kids_book_section.dart';
import 'package:kindergarten/services/letters.dart';
import 'package:kindergarten/services/training_courses.dart';
import 'package:kindergarten/services/useful_apps.dart';
import 'package:kindergarten/services/worksheet_model.dart';
import 'package:kindergarten/services/youtube.dart'; 
import '../../screens/Onboarding/onboarding_screen.dart';
import '../../screens/wrapper/warapper.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:provider/provider.dart';


//local
import '../../settings.dart'; 
import 'models/user_model.dart';
import 'services/audible_features.dart';
import 'services/food_section.dart';
import 'services/hands_section.dart';
import 'services/health_and_safety_section.dart';
import 'services/kids_clothes_section.dart';
import 'services/mission_section.dart';
import 'services/national_section.dart';
import 'services/vision_section.dart';
import 'services/water_section.dart';
import 'services/welcome_section.dart'; 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ 
        StreamProvider<List<MissionModel>>.value(
      value: MissionServices().missionData,
       initialData: [], 
       ),
        StreamProvider<List<VisionModel>>.value(
      value: VisionServices().visionData,
       initialData: [], 
       ),
        StreamProvider<List<AudibleFeaturesModel>>.value(
      value: AudibleFeaturesServices().audibleFeaturesData,
       initialData: [], 
       ),
        StreamProvider<List<WaterSectionModel>>.value(
      value: WaterSectionServices().waterSectionData,
       initialData: [], 
       ),
        StreamProvider<List<HealthSectionModel>>.value(
      value: HealthSectionServices().healthSectionData,
       initialData: [], 
       ),
        StreamProvider<List<FoodSectionModel>>.value(
      value: FoodSectionServices().foodSectionData,
       initialData: [], 
       ),
        StreamProvider<List<NationalSectionModel>>.value(
      value: NationalSectionServices().nationalSectionData,
       initialData: [], 
       ),
        StreamProvider<List<KidsBooksSectionModel>>.value(
      value: KidsBooksSectionServices().kidsBooksSectionData,
       initialData: [], 
       ),
        StreamProvider<List<KidsClothesSectionModel>>.value(
      value: KidsClothesSectionServices().kidsClothesSectionData,
       initialData: [], 
       ),
        StreamProvider<List<EnrichmentPrograms>>.value(
      value: EnrichmentProgramsServices().enrichmentProgramsData,
       initialData: [], 
       ),
        StreamProvider<List<HandsSectionModel>>.value(
      value: HandsSectionServices().handsSectionData,
       initialData: [], 
       ),
        StreamProvider<List<FamilySectionModel>>.value(
      value: FamilySectionServices().familySectionsData,
       initialData: [], 
       ),
        StreamProvider<List<FriendsSectionModel>>.value(
      value: FriendsSectionServices().friendsSectionnData,
       initialData: [], 
       ),
        StreamProvider<List<WelcomeSectionModel>>.value(
      value: WelcomeSectionServices().welcomeSectionData,
       initialData: [], 
       ),
        StreamProvider<List<WorksheetsModel>>.value(
      value: WorksheetServices().worksheetsData,
       initialData: [], 
       ),
        StreamProvider<List<LetterModel>>.value(
      value: LettersServices().lettersData,
       initialData: [], 
       ),
        StreamProvider<List<TrainingCourses>>.value(
      value: TrainingCoursesServices().trainingCoursesData,
       initialData: [], 
       ),
        StreamProvider<List<YoutubeModel>>.value(
      value: YoutubeServices().youtubeData,
       initialData: [], 
       ),
        StreamProvider<List<UsefulAppsModel>>.value(
      value: UsefulAppsServices().usefulAppsData,
       initialData: [], 
       ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kindergarten',
        theme: textData, 
        home: SplashScreen(),
      ),
    );
  }
}


class SplashScreen extends StatefulWidget { 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  late bool firstRun;
Future<bool> isFirstTime() async {
  firstRun = await IsFirstRun.isFirstRun(); 
  return  firstRun;     
} 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
 future: isFirstTime(),
 builder: (ctx,snapshot) {
       if (snapshot.hasData) {
      return firstRun?OnBoarding()
      :MultiProvider(
      providers: [
        StreamProvider<UserModel>.value(
          value: AuthService().user,
          initialData: UserModel(id:""),
        ),
        ],
        child: Wrapper())
      ;
    } else { 
      return Container(color:Colors.white);
    }
 
 });
    
  }
}
