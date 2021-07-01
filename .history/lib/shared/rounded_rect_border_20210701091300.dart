// dependencies
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../settings.dart';



enum TypeDashNumber { High, Small }

// ignore: must_be_immutable
class RoundedRectBorderWidget extends StatelessWidget {
  Color ? borderColor = kColor11;
  Color ? contentColor;
  EdgeInsets ? padding = EdgeInsets.all(6.0);
  final Widget child;
  TypeDashNumber ? typeDashNumber;
  double ? borderRadius = 10.0 ;
  RoundedRectBorderWidget(
      {required this.child,
       this.padding,
       this.typeDashNumber,
       this.borderColor,
       this.contentColor,
       this.borderRadius});
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10.0)),
        child: Container(
          color: contentColor?? Colors.white,
          child: DottedBorder(
            strokeWidth: typeDashNumber == TypeDashNumber.Small ? 1.0 : 1.5,
            dashPattern: typeDashNumber == TypeDashNumber.Small
                ? const [5.0, 2.0]
                : const [15.0, 3.0],

            /*    dashPattern: const <double>[9, 3],   radius: Radius.circular(10), */
            color: borderColor ??  kColor11,
            borderType: BorderType.RRect,
            radius: Radius.circular(borderRadius ?? 10.0),
            padding: padding ?? EdgeInsets.all(2.0),
            child:
                /* ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)), */
                child,
          ),
        ) /* ), */
        );
  }
}