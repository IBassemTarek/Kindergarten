import 'package:flutter/material.dart';
import 'package:kindergarten/screens/About/about.dart';
import 'package:kindergarten/screens/DrawerScreen/pop_up_dialog.dart';
import 'package:kindergarten/screens/shared/pageRouteAnimation.dart';
import 'package:url_launcher/url_launcher.dart';

List<Map> upperdrawerItemsE = [
  {
    'icon': Icons.info,
    'title': 'About Us',
    "function": ({required BuildContext context}) {
      Navigator.push(
        context,
        OnBoardingPageRoute(
            duration: 1000,
            widget: AboutUs(),
            myAnimation: Curves.elasticInOut),
      );
    },
  },
  {
    'icon': Icons.share,
    'title': 'Share App',
    "function": ({required BuildContext context}) {},
  },
  {
    'icon': Icons.star_rate,
    'title': 'Rating Us',
    "function": ({required BuildContext context}) {},
  },
  {
    'icon': Icons.chat,
    'title': 'Contact Us',
    "function": ({required BuildContext context}) {
      showDialog(
        context: context,
        builder: (BuildContext context) => buildPopupDialog(context),
      );
    },
  },
  {
    'icon': Icons.wheelchair_pickup,
    'title': 'guiding children',
    "function": ({required BuildContext context}) async {
      await canLaunch(
              "https://drive.google.com/file/d/1-MBIAllXplKyqybAhjdJ-I6vD6NQ7yFR/view?usp=sharing")
          ? await launch(
              "https://drive.google.com/file/d/1-MBIAllXplKyqybAhjdJ-I6vD6NQ7yFR/view?usp=sharing")
          : throw 'Could not launch url';
    },
  },
];

List<Map> upperdrawerItemsA = [
  {
    'icon': Icons.info,
    'title': 'معلومات عنا',
    "function": ({required BuildContext context}) {
      print("ddd");
      Navigator.push(
        context,
        OnBoardingPageRoute(
            duration: 1000,
            widget: AboutUs(),
            myAnimation: Curves.elasticInOut),
      );
    },
  },
  {
    'icon': Icons.share,
    'title': 'شارك التطبيق',
    "function": ({required BuildContext context}) {},
  },
  {
    'icon': Icons.star_rate,
    'title': 'تقييمنا',
    "function": ({required BuildContext context}) {},
  },
  {
    'icon': Icons.chat,
    'title': 'اتصل بنا',
    "function": ({required BuildContext context}) {
      showDialog(
        context: context,
        builder: (BuildContext context) => buildPopupDialog(context),
      );
    },
  },
  {
    'icon': Icons.wheelchair_pickup,
    'title': 'توجيه الأطفال',
    "function": ({required BuildContext context}) async {
      await canLaunch(
              "https://drive.google.com/file/d/1-MBIAllXplKyqybAhjdJ-I6vD6NQ7yFR/view?usp=sharing")
          ? await launch(
              "https://drive.google.com/file/d/1-MBIAllXplKyqybAhjdJ-I6vD6NQ7yFR/view?usp=sharing")
          : throw 'Could not launch url';
    },
  },
];
