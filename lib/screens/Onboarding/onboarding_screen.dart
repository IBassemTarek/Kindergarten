// dependencies
import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:kindergarten/models/modalprogrsshub.dart';
import 'package:kindergarten/screens/AuthUI/sign_in.dart';
import 'package:kindergarten/screens/shared/rounded_rect_border.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:provider/provider.dart';
// local
import '../../settings.dart';
import '../shared/pageRouteAnimation.dart'; 

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size; 
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container( 
              child: Image.asset('assets/images/onboarding/logo.png'),
              height: _size.height * 0.2,
            ),
            Container(
              height: _size.height * 0.65,
              child: PageIndicatorContainer(
                indicatorSelectorColor: kColor3,
                indicatorColor: kColor11,
                padding: EdgeInsets.zero,
                shape: IndicatorShape.roundRectangleShape(
                  size: Size(25, 10), cornerSize: Size.square(5)
                ),
                length: onBoardingModel.length, //6
                child: PageView(
                  children: onBoardingModel
                      .map((e) => BodyOnBoarding(
                            imageAssets: e.imageAsset,
                            mainTitle: e.mainTitle,
                            subTitle: e.subTitle,
                            size: _size,
                          ))
                      .toList(),
                  controller: _pageController,
                ),
              ),
            ),
            Container(
              height: _size.height * 0.06,
              decoration: BoxDecoration(  
                             color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Color(0xffC4C5C6).withOpacity(0.25),
                    offset: Offset(0, 4)),
              ],
            ),
            margin: EdgeInsets.all(12), 
                
              child:  RoundedRectBorderWidget( 
                typeDashNumber:  TypeDashNumber.Small,
                child: InkWell(
                    onTap: () async { 
                      Navigator.pushReplacement(
                          context,
                          OnBoardingPageRoute(
                            duration: 1000,
                              widget:      MultiProvider(
      providers: [
              ChangeNotifierProvider<Visible>(
          create: (context) => Visible(),
        ),
              ChangeNotifierProvider<AuthData>(
          create: (context) => AuthData(),
        ),
              ChangeNotifierProvider<ModelHub>(
          create: (context) => ModelHub(),
        )
        ],
                                
                                child: SignIn()),
                              myAnimation: Curves.elasticInOut),
                          );
                    },
                    child: Center(
                      child: Text("إبدأ",style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 24,color:kColor3),),
                    ),
                  ),
              ),
                
                
              ),
            
          ],
        ),
      ),
    );
  }
}

class BodyOnBoarding extends StatelessWidget {
  final String imageAssets;
  final String mainTitle;
  final String subTitle;
  final Size size;
  const BodyOnBoarding(
      {required this.imageAssets,required this.mainTitle,required this.subTitle,required this.size});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        Image.asset(imageAssets,fit: BoxFit.fill,width: size.width *0.9,),
        Spacer(),
        Container(
          height: size.height*0.13,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                mainTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: size.height*0.0125,),
              Container( 
                width: size.width*0.86498,
                child: Center(
                  child: Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height*0.05,),
      ],
    );
  }
}

const List<OnBoardingModel> onBoardingModel = [ //delete const
  OnBoardingModel(
      mainTitle: "معلمتي الفاضلة",
      subTitle: "جهدك المبذول في التعليم لا يذهب هباء فالله إصطفاك لإعمار الأرض و بنائها",
      imageAsset: 'assets/images/onboarding/1.png'),
  OnBoardingModel(
      mainTitle: "إكرام المعلمة",
      subTitle: "أكرمك الله بمهنة الأنبياء فكوني قدوة حسنة لطلابك",
      imageAsset: 'assets/images/onboarding/2.png'),
  OnBoardingModel(
      mainTitle: "............",
      subTitle: ".............................................",
      imageAsset: 'assets/images/onboarding/3.png'),
  OnBoardingModel(
      mainTitle: "............",
      subTitle: ".............................................",
      imageAsset: 'assets/images/onboarding/4.png'),
];
 
class OnBoardingModel {
  final String mainTitle;
  final String subTitle;
  final String imageAsset;

  const OnBoardingModel({required this.mainTitle,required this.subTitle,required this.imageAsset}); //delete const
}
