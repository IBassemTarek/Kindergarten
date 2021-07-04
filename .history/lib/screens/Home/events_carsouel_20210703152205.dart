
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EventsCarsouel extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset("assets/images/home/home-2.png")),
        Wrap(
          runSpacing: 0.0279*_height,
          children: [
            
          Padding(
            padding: EdgeInsets.only(left:0.0507*_width ),
            child: Text('Events',style:Theme.of(context).textTheme.headline3,),
          ),
          
            CarouselSlider.builder(
          itemCount: 3,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
             height: 0.22098*_height,
             width: 0.71739*_width,
             decoration: BoxDecoration(
             color: Colors.black12,
             borderRadius: BorderRadius.circular(15),
             image: DecorationImage(
               fit: BoxFit.fill,
               image: AssetImage("assets/images/home/event$itemIndex.jpg")
             )
             ),
    ),
          options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
          ],
        ),
      ],
    );
  }
}
