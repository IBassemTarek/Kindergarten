import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../settings.dart';

class InfoCell extends StatelessWidget {  
  final String imageURL;
  final String title;
  final String link;
  InfoCell({required this.imageURL,required this.link,required this.title});
  @override
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: ()async{
    await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
      },
      child: Column(
      children: [
        Container(
          height: 0.111607*_height,
          width: 0.31159*_width,
          decoration: BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           image: AssetImage(imageURL)
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
          child: Center(child: Text(title,style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 12))),
             
        ),
      ],
      ),
    );
  }
}