import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:kindergarten/models/pdf_model.dart';
import 'package:kindergarten/services/enrichment_programs.dart';
import 'package:kindergarten/services/training_courses.dart'; 
import '../../screens/Onboarding/onboarding_screen.dart';
import '../../screens/wrapper/warapper.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:provider/provider.dart';


//local
import '../../settings.dart'; 
import 'models/user_model.dart'; 
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
        StreamProvider<List<EnrichmentPrograms>>.value(
      value: EnrichmentProgramsServices().enrichmentProgramsData,
       initialData: [], 
       ),
        StreamProvider<List<TrainingCourses>>.value(
      value: TrainingCoursesServices().trainingCoursesData,
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
