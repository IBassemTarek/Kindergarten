import 'package:flutter/material.dart';

import '../../settings.dart';

class EducationUnits extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Wrap(
      runSpacing: 0.0279*_height,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
            child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Educational units',style:Theme.of(context).textTheme.headline3,),
      InkWell(
        onTap: (){

        },
        child: Wrap(
          direction:Axis.horizontal,
          spacing: 0.0314*_width,
          children: [
            Text('View all',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor7,fontSize: 14)),
            Icon(Icons.smart_display,color: kColor4,)
          ],
        ),
      )
    ],
            ),
          ),
          ListView.separated(
             padding: EdgeInsets.symmetric(horizontal:0.0507*_width ),
          )
      ],
    );
  }
}

class InfoCell extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
    children: [
      Container(
        height: 0.111607*_height,
        width: 0.31159*_width,
        decoration: BoxDecoration(
       image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage("assets/images/home/home-1.png")
       ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
        ),
      ),
      Container(
        height: 0.0357*_height,
        width: 0.311594*_width,
        decoration: tabsShadow.copyWith(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
        ),
        child: Center(child: Text("Welcome Section",style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 12))),
           
      ),
    ],
    );
  }
}
