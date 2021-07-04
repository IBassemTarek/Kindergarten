import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandob/models/drawer_scalling.dart';

class PageHaveDrawer extends StatelessWidget { 
  final Widget ? child;
  PageHaveDrawer({this.child});
  @override
  Widget build(BuildContext context) {
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return AnimatedContainer(
          decoration: BoxDecoration(
            color:Colors.grey[200], 
            borderRadius:BorderRadius.circular(_drawerScalling.isDrawerOpen?20:20.0),
          ), 
                duration: Duration(milliseconds: 250),
                transform: Matrix4.translationValues(_drawerScalling.xmargin, _drawerScalling.ymargin, 0)..scale(_drawerScalling.scaleFactor),
                child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20), 
      ),
                  child: child),
      
    );
  }
}