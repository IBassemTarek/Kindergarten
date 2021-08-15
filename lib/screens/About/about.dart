import 'package:flutter/material.dart'; 

import '../../settings.dart';



const List<String> experiance = [
  "حاصلة على جائزة أفضل عمل متميز على مستوى المملكة",
  "مشرفة تطوير",
  "معلمة رياض أطفال سابقا",
  "بكالوريوس اقتصاد منزلي وتربية فنية",
  "مدربة ذكاء اصطناعي وروبوت EV3 Robots & AI",
  "مدربة برمجة بلغة سكراتش Scratch",
  "مدربة برنامج الحساب ذهني Mental math",
  "مدربة برامج تقنية للمعلمين",
  "مصممة حقائب تدريبية متخصصة في تدريب الأطفال",
  "مشاركة في تدريب وتطوير عدد كبير من معلمات رياض الأطفال بالمدينة المنورة",
  "مؤسس تطبيق عالم رياض الأطفال"
];
class AboutUs extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height; 
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:   EdgeInsets.symmetric(horizontal:0.01116*_height,vertical: 0.016741*_height),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row( 
                        children: [
                          Image.asset("assets/images/appIcon.png",height: _height*0.1,),
                          Spacer(),
                          InkWell(
                   splashColor: Colors.transparent,
                        onTap: () {Navigator.pop(context);},
                     child: Container(
                    height: 0.05086*_height,
                    width: 0.05086*_height,
                    decoration: tabsShadow,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Icon(Icons.arrow_back,color: kColor4,))))
                        ],
                      ),
                    )),
                  Text("أ. زينب محمد السقاف",style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor1, fontSize: 14),),
                  SizedBox(height: 0.00631401*_height,),
                  Text("مشرفة ومدربة برامج تطويرية",style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor6, fontSize: 14),),
                  SizedBox(height: 0.02231401*_height,),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap:true,
                    itemBuilder:  (context,i) {
                      return ListTile( 
                        leading: Icon(Icons.fiber_manual_record,size: 12,color: kColor1,),
                        title: Transform(
                          transform: Matrix4.translationValues(16, 0.0, 0.0),
                          child: Text(experiance[i],style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor1, fontSize: 14))),
                      );
                    },
                    separatorBuilder: (context,i)=>  SizedBox(height:0.00231401*_height,),
                    itemCount: experiance.length),
                  SizedBox(height: 0.02231401*_height,),
                  Text("صممت هذا التطبيق لمساعدة كل معلمة او طالبة رياض أطفال لتسهيل البحث في كل ما يخص الأطفال وتطويرهم واعدادهم لمستقبل واعد، وجمع أفضل الأفكار والوسائل ذات الجودة العالية",textAlign: TextAlign.justify,textDirection: TextDirection.rtl,style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor1, fontSize: 14, )),
                  SizedBox(height: 0.02231401*_height,),
                  Text("اسأل الله ان يعود بالنفع على الجميع",style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor1, fontSize: 14, )),
                  SizedBox(height: 0.06231401*_height,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("أ. زينب السقاف",style:  Theme.of(context).textTheme.headline2?.copyWith(color: kColor6, fontSize: 14),))
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}