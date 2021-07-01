
import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:provider/provider.dart';  
import 'suffix_text_field.dart';

import '../../settings.dart';

class CustomTextFormField extends StatelessWidget {
  final String title; 
  CustomTextFormField({required this.title});
  @override
  Widget build(BuildContext context) { 
    final _visible = Provider.of<Visible>(context);
    final _authData = Provider.of<AuthData>(context);
    return  
     TextFormField( 
          onChanged: (value){
            if(title == "Email")
            { 
            _authData.setEmail(emailIn:value);  
            }
            else if(title == "Password")
            { 
            _authData.setPassword(passwordIn: value);  
            }
            else if(title == "Name")
            { 
            _authData.setName(nameIn: value);  
            }
          },
          obscureText: ((title == "Password" || title == "Confirm Password"|| title == "New Password")  && !_visible.visable),
          cursorColor: kColor4,
          decoration: InputDecoration(
            suffixIcon: SuffixTextField(title: title), 
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: kColor1),
            ),
          
        ),
     
    );
  }
}