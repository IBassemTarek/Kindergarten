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
const Color kColor12 = Color(0xffC0C0C0);





final BoxDecoration tabsShadow = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
          color: kColor9,
        boxShadow: [
          BoxShadow(
            color: kColor12,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
); 
ThemeData get textData {
  return ThemeData(
    scaffoldBackgroundColor: kColor9,
    backgroundColor: kColor9,
    hintColor: kColor2,
    dividerColor: kColor11,
    primaryColor: kColor6,
    splashColor: kColor6.withOpacity(0.2),
    indicatorColor: kColor6.withOpacity(0.2),
    highlightColor: kColor6.withOpacity(0.2),
    colorScheme: ColorScheme.light(
      secondary: kColor6,
      primary: kColor6,
      error: kColor5,
    ),
    
    textTheme: TextTheme(
      headline3: TextStyle(
        fontFamily: "arialRounded",
        fontSize: 24,
        color: kColor6,
      ),
      
      headline1: TextStyle(
        fontFamily: "gilory-bold",
        fontSize: 18,
        color: kColor1,
      ),
      headline2: TextStyle(
        fontFamily: "cairo-bold",
        fontSize: 18,
        color: kColor1,
      ),
      subtitle2: TextStyle( 
        fontFamily: "cairo-regular",
        fontSize: 14,
        color: kColor2,
      ), 
      subtitle1: TextStyle( 
        fontFamily: "arial",
        fontSize: 14,
        color: kColor2,
      ),
    ), 
  );
}
