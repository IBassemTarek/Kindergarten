import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/screens/shared/custom_text_form.dart';

import 'text_field_lables.dart';

class InputField extends StatelessWidget {
  final TextFieldLables data;

  InputField({required this.data});

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
            width: _width * 0.89,
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Locales?.currentLocale(context).toString() == "ar"
                    ? Text(
                        data.lableA,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: 16),
                      )
                    : Text(data.lable,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: 21)),
              ],
            ),
          ),
          Container(
            width: _width * 0.9,
            child: CustomTextFormField(
              data: data,
            ),
          )
        ],
      ),
    );
  }
}
