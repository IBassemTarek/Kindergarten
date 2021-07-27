import 'package:kindergarten/models/preparing_pdf_models.dart';
import 'package:kindergarten/services/Preparing_services/dwelling_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/family_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/food_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/friends_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/hands_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/health_and_safety_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/kids_book_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/kids_clothes_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/national_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/sand_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/water_section_preparing.dart';
import 'package:kindergarten/services/Preparing_services/welcome_section_preparing.dart'; 
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> preparingStreams = [
         StreamProvider<List<WaterSectionPreparingModel>>.value(
      value: WaterSectionPreparingServices().waterSectionData,
       initialData: [], 
       ),


         StreamProvider<List<WelcomeSectionPreparingModel>>.value(
      value: WelcomeSectionPreparingServices().welcomeSectionData,
       initialData: [], 
       ),


         StreamProvider<List<NationalSectionPreparingModel>>.value(
      value: NationalSectionPreparingServices().nationalSectionData,
       initialData: [], 
       ),


         StreamProvider<List<KidsClothesSectionPreparingModel>>.value(
      value: KidsClothesSectionPreparingServices().kidsClothesSectionData,
       initialData: [], 
       ),




         StreamProvider<List<HealthSectionPreparingModel>>.value(
      value: HealthSectionPreparingServices().healthSectionData,
       initialData: [], 
       ),


           StreamProvider<List<KidsBooksSectionPreparingModel>>.value(
      value: KidsBooksSectionPreparingServices().kidsBooksSectionData,
       initialData: [], 
       ),
  
         StreamProvider<List<HandsSectionPreparingModel>>.value(
      value: HandsSectionPreparingServices().handsSectionData,
       initialData: [], 
       ),


         StreamProvider<List<FriendsSectionPreparingModel>>.value(
      value: FriendsSectionPreparingServices().friendsSectionnData,
       initialData: [], 
       ),
  

         StreamProvider<List<FoodSectionPreparingModel>>.value(
      value: FoodSectionPreparingServices().foodSectionData,
       initialData: [], 
       ),

  

        StreamProvider<List<DwellingSectionPreparing>>.value(
      value: DwellingSectionPreparingServices().dwellingSectionData,
       initialData: [], 
       ),
        StreamProvider<List<FamilySectionPreparingModel>>.value(
      value: FamilySectionPreparingServices().familySectionsData,
       initialData: [], 
       ),
        StreamProvider<List<SandSectionPreparing>>.value(
      value: SandSectionPreparingServices().sandSectionData,
       initialData: [], 
       ),

];