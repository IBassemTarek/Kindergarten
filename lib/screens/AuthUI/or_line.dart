import 'package:flutter/material.dart';

import '../../settings.dart';

class OrLine extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     final _width = MediaQuery.of(context).size.width;
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 0.01449*_width,
      direction: Axis.horizontal,
      children: [
        Container(
          width: 0.38*_width,
          child: Divider(
            color: kColor1,
          )),
        Text('Or',style:Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14,color: kColor1)),
        Container(
          width: 0.38*_width,
          child: Divider(
            color: kColor1,
          )),
      ],
    );
  }
}