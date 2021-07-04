
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/DrawerScreen/page_have_drawer.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart'; 

import '../../settings.dart';


class MyHomePage extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kColor10,
      body: Stack(
        children: [
          DrawerScreen(),
          PageHaveDrawer(
            child: HomePage()),
        ],
      ),  
    );
  }
}

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Center( 
          child: Column(  
            children: <Widget>[
              TopBar(title: "Home",),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                'Welcome to Home page',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 
 