
import 'package:flutter/material.dart';
import 'package:kindergarten/screens/DrawerScreen/drawer_screen.dart';
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:kindergarten/services/auth.dart';

import '../../settings.dart';


class MyHomePage extends StatelessWidget {  
  final _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kColor10,
      body: Stack(
        children: [
          DrawerScreen(),
          SafeArea(
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
            await _auth.signOut();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),  
    );
  }
} 
 