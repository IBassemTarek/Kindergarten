import 'package:flutter/material.dart'; 
import 'package:kindergarten/models/drawer_scalling.dart'; 
import 'package:provider/provider.dart';

class PageHaveDrawer extends StatelessWidget { 
  final Widget ? child;
  PageHaveDrawer({this.child});
  @override
  Widget build(BuildContext context) {
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return AnimatedContainer(
          decoration: BoxDecoration(
            color:Colors.grey[200], 
            borderRadius:BorderRadius.circular(drawerScalling.isDrawerOpen?20:0),
          ), 
                duration: Duration(milliseconds: 250),
                transform: Matrix4.translationValues(drawerScalling.xmargin, drawerScalling.ymargin, 0)..scale(drawerScalling.scaleFactor),
                child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20), 
      ),
                  child: child),
      
    );
  }
}