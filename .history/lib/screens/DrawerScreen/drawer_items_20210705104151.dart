import 'package:flutter/material.dart';
import 'package:kindergarten/screens/UsefulApps/useful_apps.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';

List<Map> upperdrawerItems = [
  {
    'icon': Icons.info,
    'title': 'About Us',
    "function": ({required BuildContext context}){

      },
  },
  {
    'icon': Icons.share,
    'title': 'Share App',
    "function": ({required BuildContext context}){

      },
  },
  {
    'icon': Icons.star_rate,
    'title': 'Rating Us',
    "function": ({required BuildContext context}){

      },
  },
  {
    'icon': Icons.chat,
    'title': 'Contact Us',
    "function": ({required BuildContext context}){
  
      },
  },
  {
    'icon': Icons.apps,
    'title': 'Useful apps',
    "function": ({required BuildContext context}){
      Navigator.push(
         context,
         OnBoardingPageRoute(
         duration: 1000,
         widget: UsefulApps( 
         ),
         myAnimation: Curves.elasticInOut),
          );
      },
  },
];