
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/services/users.dart';
import 'package:provider/provider.dart';

import '../../settings.dart';

class WelcomeSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final _name = Provider.of<UserData>(context).name;
    return Container(
      height: 0.128348*_height,
      width: 0.90338*_width,
      decoration: tabsShadow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ 
           Container(
             height: 0.09152*_height,
             width: 0.2947*_width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               image: DecorationImage(
                 image: AssetImage("assets/images/home/home-1.png")
               )
             ),
           ), 
           Container(
             height: 0.087844*_height,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   width: 0.4697*_width,
                   child:         Row(
          children: [
            LocaleText(
                "Welcome",style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor6),),
                SizedBox(width: _width*0.011,),
                Text("$_name",style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor6),),
          ],
        ), ),
                 LocaleText('Start learn with us',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7 ),)
               ],
             ),
           )
        ],
      ),
    );
  }
} 
 