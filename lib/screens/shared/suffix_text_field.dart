import 'package:flutter/material.dart';
import 'package:kindergarten/models/AuthVisible/auth_visible.dart';  
import 'package:provider/provider.dart';

import '../../settings.dart';

class SuffixTextField extends StatelessWidget {
  const SuffixTextField({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) { 
    final _visible = Provider.of<Visible>(context);
    if (title == "Password")
      return  InkWell(
            onTap: () {
              _visible.toggleVisibility();
            },
            child: Icon(
              _visible.visable
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: kColor4,
            ) ,
      );
      else  
      return Container(
        height: 1,
        width: 1,
      );  
  }
}