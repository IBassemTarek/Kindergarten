import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import '../AuthUI/text_field_lables.dart';

import 'InputField.dart';

class DataEntry extends StatelessWidget {
  const DataEntry({
    required this.loginTextFieldLables,
  });

  final List<TextFieldLables> loginTextFieldLables;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: Locales?.currentLocale(context).toString() == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return InputField(
            data: loginTextFieldLables[i],
          );
        },
        itemCount: loginTextFieldLables.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 0.0334 * _height,
          );
        },
      ),
    );
  }
}
