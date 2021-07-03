
import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthData/auth_data.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';
import 'package:provider/provider.dart';  
import 'suffix_text_field.dart';

import '../../settings.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
   final String lable;
  CustomTextFormField({required this.title,required this.lable});
  @override
  Widget build(BuildContext context) { 
    final _visible = Provider.of<Visible>(context);
    final _authData = Provider.of<AuthData>(context);
    return  
     Container(
             decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
       child: TextFormField( 
            onSaved: (value){
              if(title == "Email")
              { 
                
              _authData.setEmail(emailIn:value);  
              print(value);
              }
              else if(title == "Password")
              { 
              _authData.setPassword(passwordIn: value);  
              print(value);
              }
              else if(title == "Name")
              { 
              _authData.setName(nameIn: value);  
              print(value);
              }
            },
            obscureText: ((title == "Password" || title == "Confirm Password"|| title == "New Password")  && !_visible.visable),
            cursorColor: kColor4,
            decoration: InputDecoration(
              fillColor: Colors.white,
               filled: true,
               hintText: lable,
              suffixIcon: SuffixTextField(title: title), 
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