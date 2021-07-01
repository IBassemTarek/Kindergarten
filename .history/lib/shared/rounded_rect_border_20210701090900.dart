// dependencies
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../settings.dart';



enum TypeDashNumber { High, Small }

class RoundedRectBorderWidget extends StatelessWidget {
  Color ? borderColor;
  Color ? contentColor;
  EdgeInsets ? padding;
  final Widget child;
  TypeDashNumber ? typeDashNumber;
  double ? borderRadius;
  RoundedRectBorderWidget(
      {required this.child,
       this.padding,
       this.typeDashNumber,
       this.borderColor,
       this.contentColor,
       this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Container(
          color: contentColor as Color,
          child: DottedBorder(
            strokeWidth: typeDashNumber == TypeDashNumber.Small ? 1.0 : 1.5,
            dashPattern: typeDashNumber == TypeDashNumber.Small
                ? const [5.0, 2.0]
                : const [15.0, 3.0],

            /*    dashPattern: const <double>[9, 3],   radius: Radius.circular(10), */
            color: kColor11,
            borderType: BorderType.RRect,
            radius: Radius.circular(10.0),
            padding: EdgeInsets.all(6.0),
            child:
                /* ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)), */
                child,
          ),
        ) /* ), */
        );
  }
}