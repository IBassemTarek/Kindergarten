import 'package:kindergarten/services/Last_services/dwelling_section_late.dart';
import 'package:kindergarten/services/Last_services/family_section_late.dart';
import 'package:kindergarten/services/Last_services/food_section_late.dart';
import 'package:kindergarten/services/Last_services/friends_section_late.dart';
import 'package:kindergarten/services/Last_services/hands_section_late.dart';
import 'package:kindergarten/services/Last_services/health_and_safety_section_late.dart';
import 'package:kindergarten/services/Last_services/kids_book_section_late.dart';
import 'package:kindergarten/services/Last_services/kids_clothes_section_late.dart';
import 'package:kindergarten/services/Last_services/national_section_late.dart';
import 'package:kindergarten/services/Last_services/sand_section_late.dart';
import 'package:kindergarten/services/Last_services/water_section_late.dart';
import 'package:kindergarten/services/Last_services/welcome_section_late.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'last_pdf_models.dart';

List<SingleChildWidget> lastStreams = [
         StreamProvider<List<WaterSectionLastModel>>.value(
      value: WaterSectionLateServices().waterSectionData,
       initialData: [], 
       ),


         StreamProvider<List<WelcomeSectionLastModel>>.value(
      value: WelcomeSectionLateServices().welcomeSectionData,
       initialData: [], 
       ),


         StreamProvider<List<NationalSectionLastModel>>.value(
      value: NationalSectionLateServices().nationalSectionData,
       initialData: [], 
       ),


         StreamProvider<List<KidsClothesSectionLastModel>>.value(
      value: KidsClothesSectionLateServices().kidsClothesSectionData,
       initialData: [], 
       ),




         StreamProvider<List<HealthSectionLastModel>>.value(
      value: HealthSectionLateServices().healthSectionData,
       initialData: [], 
       ),


           StreamProvider<List<KidsBooksSectionLastModel>>.value(
      value: KidsBooksSectionLateServices().kidsBooksSectionData,
       initialData: [], 
       ),
  
         StreamProvider<List<HandsSectionLastModel>>.value(
      value: HandsSectionLateServices().handsSectionData,
       initialData: [], 
       ),


         StreamProvider<List<FriendsSectionLastModel>>.value(
      value: FriendsSectionLateServices().friendsSectionnData,
       initialData: [], 
       ),
  

         StreamProvider<List<FoodSectionLastModel>>.value(
      value: FoodSectionLateServices().foodSectionData,
       initialData: [], 
       ),

  

        StreamProvider<List<DwellingSectionLast>>.value(
      value: DwellingSectionLateServices().dwellingSectionData,
       initialData: [], 
       ),
        StreamProvider<List<FamilySectionLastModel>>.value(
      value: FamilySectionLateServices().familySectionsData,
       initialData: [], 
       ),
        StreamProvider<List<SandSectionLast>>.value(
      value: SandSectionLateServices().sandSectionData,
       initialData: [], 
       ),

];