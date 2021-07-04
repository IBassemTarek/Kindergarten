import 'package:flutter/material.dart';
import 'package:kindergarten/models/drawer_scalling.dart';
import 'package:provider/provider.dart'; 

import '../../settings.dart';

class DrawerScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) { 
    final drawerScalling = Provider.of<DrawerScalling>(context);
    return Container(
        padding: EdgeInsets.only(top: 50,bottom: 70,left: 30),
        color:Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                   Container(
                     height: 0.06039*_width,
                     decoration: BoxDecoration(
                      color: kColor9, 
                      shape: BoxShape.circle,
                     ),
                     child: InkWell(
                      onTap: (){
                        drawerScalling.closeDrawer();
                      },
                      child: Icon(Icons.close ,color: kColor12,size: 25,)),
                   ),
                
                SizedBox(height: 35,),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/profile.jpg")
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx( ()=> 
                    Text(_profileData.fullName.value,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: kColor12),),),
                    InkWell(
                      onTap: (){
                        Get.to(Profile());
                      },
                      child: Text('view your profile',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: kColor12))),
                
                  ]
                    )
              ],
            ),
              ],
            ),

            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: upperdrawerItems.map((e) => 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 12),
                    child: Row(
                      children: [
                        Icon(e['icon'],color: kColor12,size: 20,),
                        SizedBox(width: 15,),
                        Text(e['title'],style:Theme.of(context).textTheme.subtitle2?.copyWith(color: kColor12)),
                      ],
                    ),
                  )
                  
                  ).toList(),
                  
                ),
                SizedBox(height: 25,),
            Container(
              height: 0.3,
              width: 160,
              color: kColor12,
            ),
            SizedBox(height: 25,),
            Column(
              children: lowerdrawerItems.map((e) => 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 12),
                child: Row(
                  children: [
                    Icon(e['icon'],color: kColor12,size: 20,),
                    SizedBox(width: 15,),
                    Text(e['title'],style:Theme.of(context).textTheme.subtitle2?.copyWith(color: kColor12)),
                  ],
                ),
              )
              
              ).toList(),
              
            ),
              ],
            ),
    
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.exit_to_app,color: kColor12,size: 20),
                SizedBox(width: 15,),
                Text('Logout',style:Theme.of(context).textTheme.subtitle2?.copyWith(color: kColor12),)
              ],
            )
          ],
        ),
      
    );
  }
}