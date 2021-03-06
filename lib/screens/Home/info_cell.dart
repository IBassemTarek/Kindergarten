import 'package:flutter/material.dart'; 
import 'package:cached_network_image/cached_network_image.dart';

import '../../settings.dart';

class InfoCell extends StatelessWidget {  
  final String imageURL;
  final String title; 
  final bool isBig;
  InfoCell({required this.isBig,required this.imageURL,required this.title});
  @override
  Widget build(BuildContext context) { 
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
    children: [
      Container(
        height: isBig?0.20647*_height:0.111607*_height,  
        width: isBig?0.855*_width:0.31159*_width, //
        decoration: BoxDecoration(
      //  image: DecorationImage(
      //    fit: BoxFit.cover,
      //    image: NetworkImage(imageURL)
      //  ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
        ), 
             child: CachedNetworkImage(
          fit: BoxFit.fill,
      placeholder: (context, url) => Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(
        )),
    ), 
    imageUrl:  imageURL,
    errorWidget: (___, _, __) {
                return  Container( 
                        child: Image.asset(
                          'assets/images/No-Image.png',
                          fit: BoxFit.cover),
                );
              },
   
),
      ),
      Container(
        height: isBig?0.0435*_height:0.0357*_height, //
        width: isBig?0.855*_width:0.311594*_width, //
        decoration: tabsShadow.copyWith(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
        ),
        child: Center(child: Text(title,style:Theme.of(context).textTheme.headline2?.copyWith(fontSize: 12))),
           
      ),
    ],
    );
  }
}