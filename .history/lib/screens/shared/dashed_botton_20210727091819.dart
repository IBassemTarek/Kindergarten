import 'package:flutter/material.dart';
import '../../settings.dart';
import 'rounded_rect_border.dart';


class DashedButton extends StatelessWidget {


  final void Function()? ontap;
  final String title;

DashedButton({required this.ontap,required this.title});

  @override
  Widget build(BuildContext context) {
        final _height = MediaQuery.of(context).size.height;
    return Container(
            height: _height * 0.06,
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                           color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Color(0xffC4C5C6).withOpacity(0.25),
                  offset: Offset(0, 4)),
            ],
          ),
          // margin: EdgeInsets.all( 0.013392857*_height ), 
              
            child:  RoundedRectBorderWidget( 
              typeDashNumber:  TypeDashNumber.Small,
              child: InkWell(
                  onTap: ontap,
                  child: Center(
                    child: Text(title,style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 24,color:kColor3),),
                  ),
                ),
                
            ),
          );
  }
} 