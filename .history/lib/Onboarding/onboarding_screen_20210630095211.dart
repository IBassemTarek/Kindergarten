// dependencies
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
// local
import '../../widget/pageRouteAnimation.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    print (_size.height);
    print (_size.width);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Image.asset('assets/images/logo.png'),
              height: _size.height * 0.15,
              width: _size.height * 0.3,
            ),
            Container(
              height: _size.height * 0.7,
              child: PageIndicatorContainer(
                indicatorSelectorColor: kPrimaryColor,
                indicatorColor: kGreyColor.withOpacity(0.05),
                padding: EdgeInsets.zero,
                shape: IndicatorShape.roundRectangleShape(
                    size: Size(25, 10), cornerSize: Size.square(5)),
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
                border: Border.all(
                color: kBorderColor,// set border color
                width: 1.0),   // set border width
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)), 
              ),
              margin: EdgeInsets.all(12),
              // padding: EdgeInsets.all(10),
              child:  InkWell(
                  onTap: () async { 
                    Navigator.pushAndRemoveUntil(
                        context,
                        OnBoardingPageRoute(
                          duration: 1000,
                            widget: HomePage(),
                            myAnimation: Curves.elasticInOut),
                        (route) => false);
                  },
                  child: Center(
                    child: Text("إبدأ",style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22, color:kPrimaryColor )),
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
      {Key key, this.imageAssets, this.mainTitle, this.subTitle, this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: size.height*0.0375,),
        Image.asset(imageAssets, height: size.height * 0.4),
        Spacer(),
        Column(
          children: [
            Text(
              mainTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: size.height*0.0125,),
            Text(
              subTitle,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ),
          ],
        ),
        SizedBox(height: size.height*0.05,),
      ],
    );
  }
}

const List<OnBoardingModel> onBoardingModel = [ //delete const
  OnBoardingModel(
      mainTitle: "إقرأ و إستمع",
      subTitle: "تعلم بأبسط الطرق",
      imageAsset: 'assets/images/onboarding/1.png'),
  OnBoardingModel(
      mainTitle: "القائمة الجانبية",
      subTitle: "يوجد بها العديد من المميزات التي تحسن من تجربة إستخدامك",
      imageAsset: 'assets/images/onboarding/2.png'),
  OnBoardingModel(
      mainTitle: "قائمة إختر سورة",
      subTitle: "لعرض لوح محدد من السورة",
      imageAsset: 'assets/images/onboarding/3.png'),
  OnBoardingModel(
      mainTitle: "قائمة الألواح المحفوظة",
      subTitle: "إضغط لعرض اللوح المحفوظ أو إسحب لحذفه",
      imageAsset: 'assets/images/onboarding/4.png'),
  OnBoardingModel(
      mainTitle: "قائمة الحفظ بالتكرار",
      subTitle: "يمكنك زيادة معدل التكرار قم بكتابته و إضعط موافق",
      imageAsset: 'assets/images/onboarding/5.png'),
  OnBoardingModel(
      mainTitle: "التنقل بين ألواح السورة الحالية",
      subTitle: "يمكنك تصفح الألواح بطريقة سريعة",
      imageAsset: 'assets/images/onboarding/6.png'), 
];
 
class OnBoardingModel {
  final String mainTitle;
  final String subTitle;
  final String imageAsset;

  const OnBoardingModel({this.mainTitle, this.subTitle, this.imageAsset}); //delete const
}
