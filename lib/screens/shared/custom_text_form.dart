import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:kindergarten/screens/AuthUI/text_field_lables.dart';
import 'package:provider/provider.dart';
import 'suffix_text_field.dart';

import '../../settings.dart';

class CustomTextFormField extends StatelessWidget {
  final TextFieldLables data;

  CustomTextFormField({required this.data});
  @override
  Widget build(BuildContext context) {
    final _visible = Provider.of<Visible>(context);
    final _authData = Provider.of<AuthData>(context);
    return Container(
      decoration: tabsShadow,
      child: TextFormField(
        onSaved: (value) {
          if (data.lable == "Email") {
            _authData.setEmail(emailIn: value);
          } else if (data.lable == "Password") {
            _authData.setPassword(passwordIn: value);
          } else if (data.lable == "Name") {
            _authData.setName(nameIn: value);
          }
        },
        obscureText: ((data.lable == "Password" ||
                data.lable == "Confirm Password" ||
                data.lable == "New Password") &&
            !_visible.visable),
        cursorColor: kColor4,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: Locales?.currentLocale(context).toString() == "ar"
              ? data.hintA
              : data.hint,
          suffixIcon: SuffixTextField(title: data.lable),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: kColor1),
          ),
        ),
      ),
    );
  }
}
