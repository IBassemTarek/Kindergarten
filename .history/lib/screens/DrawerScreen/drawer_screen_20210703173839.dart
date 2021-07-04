import 'package:flutter/material.dart';
import 'package:kindergarten/models/drawer_scalling.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_items.dart';
import 'package:kindergarten/services/auth.dart';
import 'package:kindergarten/services/users.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';

class DrawerScreen extends StatelessWidget {
  final _auth = AuthService(); 
  @override
  Widget build(BuildContext context) { 
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height; 
    final _name = Provider.of<UserData>(context).name;
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return Container(
        padding: EdgeInsets.only(top: 50,bottom: 70,left: 30),
        color:Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
               Wrap(
                 direction: Axis.vertical,
                 spacing: _height*0.0279,
          crossAxisAlignment: WrapCrossAlignment.start,
                 children: [
                   Container(
                     height: 0.06039*_width,
                     width: 0.06039*_width,
                     decoration: BoxDecoration(
                      color: kColor9, 
                      shape: BoxShape.circle,
                     ),
                     child: InkWell(
                      onTap: (){
                        drawerScalling.closeDrawer();
                      },
                      child: Icon(Icons.close ,color: kColor10,size: 15,)),
                   ),
                   
        Text("Welcome $_name",style: Theme.of(context).textTheme.headline2?.copyWith(color: kColor9),),
                 ],
               ), 

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: upperdrawerItems.map((e) => 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 12),
            child: Row(
              children: [
                Icon(e['icon'],color: kColor9,size: 20,),
                SizedBox(width: 15,),
                Text(e['title'],style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12)),
              ],
            ),
          )
          
          ).toList(),
          
        ),
        SizedBox(height: 25,),
        Wrap(
          runSpacing: 20,
          children: [
            Container(
              height: 0.3,
              width: 160,
              color: kColor9,
            ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.exit_to_app,color: kColor9,size: 20),
            SizedBox(width: 15,),
            InkWell(
              onTap: () async {
                await _auth.signOut();
              },
              child: Text('Logout',style:Theme.of(context).textTheme.headline2?.copyWith(color: kColor9,fontSize: 12),))
          ],
        )
          ],
        ),
    

          ],
        ));
  }
}