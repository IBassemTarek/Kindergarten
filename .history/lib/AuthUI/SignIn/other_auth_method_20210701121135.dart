import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kindergarten/shared/rounded_rect_border.dart';

class OtherAuthMethod extends StatelessWidget {
  final void Function()? ontap;
  final String imageURL;
  OtherAuthMethod({required this.imageURL,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height; 
    return InkWell(
      onTap: ontap,
      child: Container(
              height: _height * 0.0558,
              width:  _height * 0.0558,
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                             color: Colors.white,
            ),  
               
              child:  RoundedRectBorderWidget( 
                typeDashNumber:  TypeDashNumber.Small,
                child:  Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                          imageURL,
                        )
              ),)
            ),
    );
  }
}