
import 'package:flutter/material.dart';
import '../AuthUI/text_field_lables.dart';

import 'InputField.dart';

class DataEntry extends StatelessWidget {
  const DataEntry({
    required this.loginTextFieldLables,
  }) ;

  final List<TextFieldLables> loginTextFieldLables;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height; 
    return ListView.separated(
          physics: NeverScrollableScrollPhysics(),  
          shrinkWrap:true,
          itemBuilder: (context,i) {
          return InputField(
          lable:  loginTextFieldLables[i].lable,
          hint:  loginTextFieldLables[i].hint,
        ); 
          }, 
          itemCount: loginTextFieldLables.length, 
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
          height:  0.0334*_height,
        );
            },
          );
  }
}