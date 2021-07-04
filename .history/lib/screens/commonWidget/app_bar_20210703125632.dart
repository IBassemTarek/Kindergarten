import 'package:flutter/material.dart';
import 'package:kindergarten/models/drawer_scalling.dart';  

import '../../settings.dart'; 

class TopBar extends StatelessWidget {
  final String title;
  final Widget prefixIcon;
  TopBar({required this.title, required this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        title == "HOME"?
        GetBuilder<DrawerScalling>( 
        builder:(_drawerScalling) => 
        _drawerScalling.isDrawerOpen
        ?OutlinedButton(
          onPressed: (){
            _drawerScalling.closeDrawer();
          },
          child: Icon(Icons.arrow_back))
              :OutlinedButton(
                onPressed: () {
              _drawerScalling.openDrawer();},
             child: Icon(Icons.menu)),
          ):
          OutlinedButton(
                onPressed: () {
                  Get.to(PagesControllerScaffold());

                },
             child: Icon(Icons.arrow_back_ios_new_rounded,color: kColor7,)),
          
          Text(
            title,
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 16),
          ),
          prefixIcon
        ],
      ),
    );
  }
}
