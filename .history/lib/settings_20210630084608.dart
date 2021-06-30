import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color kColor1 = Color(0xff263238);
const Color kColor2 = Color(0xff818181);
const Color kColor3 = Color(0xffEFD88C);
const Color kColor4 = Color(0xffCFB560);
const Color kColor5 = Color(0xffff6c44);
const Color kColor6 = Color(0xffAB8534);
const Color kColor7 = Color(0xff94966F);
const Color kColor8 = Color(0xff00F0FF); 
const Color kColor9 = Color(0xffFFFFFF);
const Color kColor10 = Color(0xff62745E); 
const Color kColor11 = Color(0xffC8BFB2); 
ThemeData get textData {
  return ThemeData(
    scaffoldBackgroundColor: kColor9,
    backgroundColor: kColor9,
    hintColor: kColor7,
    dividerColor: kColor8,
    primaryColor: kColor5,
    splashColor: kColor5.withOpacity(0.2),
    indicatorColor: kColor5.withOpacity(0.2),
    highlightColor: kColor3.withOpacity(0.2),
    colorScheme: ColorScheme.light(
      secondary: kColor5,
      primary: kColor5,
      error: kColor1,
    ),
    textTheme: TextTheme(
      headline2: TextStyle(
        // fontFamily: "arialRounded",
        fontFamily: "gilory-bold",
        fontSize: 20,
        color: kColor4,
      ),
      subtitle1: TextStyle(
        // fontFamily: "arialBold",
        fontFamily: "gilory-semiBold",
        fontSize: 17,
      ),
      button: TextStyle(
        // fontFamily: "arialBold",
        fontFamily: "gilory-semiBold",
        fontSize: 20,
      ),
      bodyText2: TextStyle(
        // fontFamily: "arial",
        fontFamily: "gilory-regular",
        fontSize: 18,
      ),
      subtitle2: TextStyle(
        // fontFamily: "almarai",
        fontFamily: "gilory-regular",
        fontSize: 18,
      ),
      bodyText1: TextStyle(
        // fontFamily: "almarai",
        fontFamily: "gilory-regular",
        fontSize: 14,
        color: kColor8
      ),
    ), 
  );
}
