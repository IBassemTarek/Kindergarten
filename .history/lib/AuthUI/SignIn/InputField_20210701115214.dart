import 'package:flutter/material.dart';
import 'package:kindergarten/shared/custom_text_form.dart';

import '../../settings.dart'; 

class   InputField extends StatelessWidget {
  final String lable; 
   final String hint; 
  InputField({  required this.hint, required this.lable});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        spacing: _height * 0.006,
        crossAxisAlignment: WrapCrossAlignment.start,
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.vertical,
        children: [
          Container(
            width:  _width * 0.89,
            child: Wrap( 
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(lable,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: kColor8)), 
              ],
            ),
          ),
          Container(
            width: _width * 0.9,
            child: CustomTextFormField(
              lable: hint,
              title: lable,
            ),
          )
        ],
      ),
    );
  }
}


